//
//  Mentor.swift
//  CardExample
//
//  Created by Masakaz Ozaki on 2021/11/21.
//

import SwiftUI

struct Mentor {
    var imageName: String?
    var nickname: String
    var realName: String
    var cources: String
    var infomation: [MentorInfomation]
    var gradient: Gradient
}


struct MentorInfomation: Identifiable {
    var title: String
    var body: String
    
    var id : String {
        return self.title
    }
}
