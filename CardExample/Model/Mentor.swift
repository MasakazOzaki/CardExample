//
//  Mentor.swift
//  CardExample
//
//  Created by Masakaz Ozaki on 2021/11/21.
//

import SwiftUI

struct Mentor {
    var image: Image?
    var nickname: String
    var realName: String
    var cources: String
    var infomation: [MentorInfomation]
    var gradient: Gradient
}


struct MentorInfomation {
    var title: String
    var body: String
}
