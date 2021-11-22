//
//  ContentView.swift
//  CardExample
//
//  Created by Masakaz Ozaki on 2021/11/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - アニメーション用パラメータ
    private static let cardTransitionDelay: Double = 0.1
    private static let cardOffset: CGFloat = 20
    private static let cardOpacity: Double = 0.05
    private static let cardShrinkRatio: CGFloat = 0.05
    private static let cardRotationAngle: Double = 8
    private static let cardScaleWhenDragginDown: CGFloat = 1.1
    private static let padding: CGFloat = 60
    
    @EnvironmentObject var inventory: Inventory
    
    //MARK: - アニメーションの状態保持用パラメータ
    @State var draggingOffset: CGFloat = 0
    @State var isDragging: Bool = false
    @State var firstCardScale: CGFloat = Self.cardScaleWhenDragginDown
    @State var isPresented = false
    @State var isExpanded = false
    @State var shouldDelay = true
    @State var selectedMentor: Mentor?
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ZStack() {
                    if self.isPresented {
                        ForEach(self.inventory.mentors) { mentor in
                            CardView(mentor: mentor)
                                .aspectRatio(10/16, contentMode: .fit)
                            
                                .cornerRadius(24)
                                .shadow(radius: 10)
                                .opacity(self.opacity(for: mentor))
                                .offset(x: 0, y: self.offset(for: mentor))
                                .scaleEffect(self.scaleEffect(for: mentor))
                                .rotation3DEffect(self.rotationAngle(for: mentor), axis: (x: 0.5, y: 2, z: -1))
                                .gesture(
                                    DragGesture()
                                        .onChanged({ (value) in
                                            self.dragGestureDidChange(value: value, mentor: mentor, geometry: geometry)
                                            
                                        })
                                        .onEnded({ (value) in
                                            self.dragGestureDidEnd(value: value, mentor: mentor, geometry: geometry)
                                        })
                                )
                                .onTapGesture {
                                    if inventory.isFirst(mentor: mentor) {
                                        selectedMentor = mentor
                                        isExpanded = true
                                        //navigationlink飛ばす
                                    } else {
                                        isExpanded = false
                                        let newMentors = self.inventory.mentors.filter { $0 != mentor } + [mentor]
                                        self.inventory.mentors = newMentors
                                    }
                                }
                                .transition(.moveUpWardsWhileFadingIn)
                                .animation(Animation.easeOut.delay(self.transitionDelay(mentor: mentor)))
                            
                        }.onAppear {
                            self.shouldDelay = false
                        }
//                        NavigationLink(destination: CardView(mentor: selectedMentor ?? Mentor.placeholder, isExpanded: true), isActive: $isExpanded) {
//                                            EmptyView()
//                                        }
                    }
                }
                .sheet(isPresented: $isExpanded) {
                    CardView(mentor: selectedMentor ?? Mentor.placeholder, isExpanded: true)
                }
                .onAppear {
                    self.isPresented = true
                    self.selectedMentor = inventory.mentors.last
                }
                .padding(.horizontal, Self.padding)
                .navigationTitle("Mentor Card")
            }
        }
    }
}


//MARK: - ドラッグ
extension ContentView {
    func dragGestureDidChange(value: DragGesture.Value, mentor: Mentor, geometry: GeometryProxy) {
        guard inventory.isFirst(mentor: mentor) else { return }
        draggingOffset = value.translation.height
        isDragging = true
        firstCardScale = newFirstCardScale(geometry: geometry)
    }
    
    func dragGestureDidEnd(value: DragGesture.Value, mentor: Mentor, geometry: GeometryProxy) {
        guard inventory.isFirst(mentor: mentor) else { return }
        draggingOffset = 0
        inventory.mentors = cardsResortedAfterTranslation(draggedMentor: mentor, yTranslation: value.translation.height, geometry: geometry)
        isDragging = false
    }
}

//MARK: - Animation Helper functions(おまじない)
extension ContentView {
    private func cardsResortedAfterTranslation(draggedMentor mentor: Mentor, yTranslation: CGFloat, geometry: GeometryProxy) -> [Mentor] {
        let cardHeight = (geometry.size.width * CGFloat(16 / 10) - Self.padding)
        if abs(yTranslation + CGFloat(inventory.mentors.count) * -Self.cardOffset) > cardHeight {
            let newMentors = [mentor] + Array(inventory.mentors.dropLast())
            print("🧋")
            return newMentors
        }
        
        print("💪")
        return inventory.mentors
    }
    
    private func newFirstCardScale(geometry: GeometryProxy) -> CGFloat {
        if draggingOffset > 0 {
            let newScale = 1 + draggingOffset / (1.5 * geometry.size.height)
            return min(Self.cardScaleWhenDragginDown, newScale)
        } else {
            let newScale = 1 + draggingOffset / (1.5 * geometry.size.height)
            return max(1 - CGFloat(inventory.mentors.count) * Self.cardShrinkRatio, newScale)
        }
    }
    
    private func transitionDelay(mentor: Mentor) -> Double {
        guard shouldDelay else { return 0 }
        return Double(inventory.index(of: mentor)) * Self.cardTransitionDelay
    }
    
    private func opacity(for mentor: Mentor) -> Double {
        let MentorIndex = Double(inventory.index(of: mentor))
        return 1 - MentorIndex * Self.cardOpacity
    }
    
    private func offset(for mentor: Mentor) -> CGFloat {
        guard !inventory.isFirst(mentor: mentor) else { return draggingOffset }
        let mentorIndex = CGFloat(inventory.index(of: mentor))
        return mentorIndex * Self.cardOffset
    }
    
    private func scaleEffect(for mentor: Mentor) -> CGFloat {
        guard !(isDragging && inventory.isFirst(mentor: mentor)) else { return firstCardScale }
        let mentorIndex = CGFloat(inventory.index(of: mentor))
        return 1 - mentorIndex * Self.cardShrinkRatio
    }
    
    private func rotationAngle(for mentor: Mentor) -> Angle {
        guard !inventory.isFirst(mentor: mentor) && !isDragging else { return .zero }
        let cardIndex = CGFloat(inventory.index(of: mentor))
        return Angle(degrees: Self.cardRotationAngle + (cardIndex * Self.cardRotationAngle))
    }
}

extension AnyTransition {
    static var moveUpWardsWhileFadingIn: AnyTransition {
        return AnyTransition.move(edge: .bottom).combined(with: .opacity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Inventory(mentors: DataModel.mentors))
    }
}
