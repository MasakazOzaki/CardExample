//
//  CardView.swift
//  CardExample
//
//  Created by Masakaz Ozaki on 2021/11/21.
//

import SwiftUI

struct CardView: View {
    var mentor: Mentor
    var isExpanded = false
    var body: some View {
        GeometryReader { geometry in
            //詳細表示時は左詰めでそうでない時は中央揃え
            VStack(alignment: isExpanded ? .leading : .center) {
                //MARK: - 常に表示するコンテンツ
                Spacer()
                Image(mentor.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().strokeBorder(Color("white65"), lineWidth: 4)
                    )
                    .frame(maxHeight: 120)
                
                Spacer()
                
                Text(mentor.nickname)
                    .font(.title)
                    .foregroundColor(Color("white95"))
                    .bold()
                
                Text(mentor.realName)
                    .font(.title3)
                
                    .foregroundColor(Color("white65"))
                    .bold()
                
                Spacer()
                HStack {
                    ForEach(mentor.symbolNames, id: \.self) { symbolName in
                        Image(systemName: symbolName)
                            .foregroundColor(Color("white65"))
                    }
                }
                    
                
                
                //MARK: - 詳細表示のみで出てくるView
                if isExpanded {
                    ForEach(mentor.information) { info in
                        Spacer()
                        DetailInfoView(info: info)
                        Spacer()
                    }
                }
                
                //MARK: -　ロゴ
                HStack {
                    Spacer()
                    Image("litlogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxHeight: 50)
                    Spacer()
                }.padding()
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .background(LinearGradient(gradient: mentor.gradient,
                                       startPoint: UnitPoint(x: 0, y: 1), endPoint: UnitPoint(x: 1, y: 0)))
            
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(mentor: Mentor(imageName: "choccho",
                                nickname: "Choccho",
                                realName: "Sho Cho",
                                symbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
                                information: [MentorInformation(title: "座右の銘",
                                                              body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum."),
                                            ],
                                
                                gradient: Gradient(colors: [
                                    Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
                                    Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])
                               ))
    }
}
