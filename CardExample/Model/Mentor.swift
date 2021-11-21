//
//  Mentor.swift
//  CardExample
//
//  Created by Masakaz Ozaki on 2021/11/21.
//

import SwiftUI

struct Mentor: Identifiable, Equatable {
    var imageName: String?
    var nickname: String
    var realName: String
    var cources: String
    var infomation: [MentorInfomation]
    var gradient: Gradient
    
    var id: String {
        return self.nickname + self.realName
    }
}


struct MentorInfomation: Identifiable, Equatable {
    var title: String
    var body: String
    
    var id: String {
        return self.title
    }
}
