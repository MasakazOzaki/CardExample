//
//  Mentor.swift
//  CardExample
//
//  Created by Masakaz Ozaki on 2021/11/21.
//

import SwiftUI

struct Mentor: Identifiable, Equatable {
    var imageName: String
    var nickname: String
    var realName: String
    var symbolNames: [String]
    var information: [MentorInformation]
    var gradient: Gradient
    
    var id: String {
        return self.nickname + self.realName
    }
    
    static let placeholder =  Mentor(imageName: "N/A",
                                 nickname: "N/A",
                                 realName: "N/A",
                                 symbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
                                 information: [MentorInformation(title: "座右の銘",
                                                               body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
                                 
                                 gradient: Gradient(colors: [
                                  Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
                                  Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])
                                )
}


struct MentorInformation: Identifiable, Equatable {
    var title: String
    var body: String
    
    var id: String {
        return self.title
    }
}
