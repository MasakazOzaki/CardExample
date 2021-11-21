//
//  inventory.swift
//  CardExample
//
//  Created by Masakaz Ozaki on 2021/11/22.
//

import Foundation

final class Inventory: ObservableObject {
    @Published var mentors: [Mentor]
    
    init(mentors: [Mentor]) {
        self.mentors = mentors.reversed()
    }
    
    func index(of mentor: Mentor) -> Int {
        return mentors.count - mentors.firstIndex(of: mentor)! - 1
    }
    
    func isFirst(mentor: Mentor) -> Bool {
        return index(of: mentor) == 0
    }
}
