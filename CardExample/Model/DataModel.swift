//
//  DataModel.swift
//  CardExample
//
//  Created by Masakaz Ozaki on 2021/11/21.
//

import SwiftUI

struct DataModel {
    static var mentors: [Mentor] = [
        Mentor(imageName: "choccho",
               nickname: "Choccho",
               realName: "Sho Cho",
               sysmbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               infomation: [MentorInfomation(title: "STATEMENT",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum."),
                            MentorInfomation(title: "つかってるiPhone",
                                             body: "iPhone 12 Pro Max"),
                            MentorInfomation(title: "住んでるところ",
                                             body: "東京のどこか"),
                            MentorInfomation(title: "無人島に持ってくならこれ",
                                             body: "Mac, iPhone, ネット, ソーラーパネル"),
                           ],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
                Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])
              ),
        
        Mentor(imageName: "kenty",
               nickname: "Kenty",
               realName: "Kento Katsumata",
               sysmbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               infomation: [MentorInfomation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
                Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])
              ),
        Mentor(imageName: "piropon",
               nickname: "Piropon",
               realName: "Hiroya Nakajima",
               sysmbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               infomation: [MentorInfomation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
                Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])
              ),
        Mentor(imageName: "azuki",
               nickname: "Azuki",
               realName: "Hazuki Tamura",
               sysmbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               infomation: [MentorInfomation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
                Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])
              ),
        Mentor(imageName: "emily",
               nickname: "Emily",
               realName: "Emily Nozaki",
               sysmbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               infomation: [MentorInfomation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
                Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])
              ),
        Mentor(imageName: "ayanon",
               nickname: "Ayanon",
               realName: "Ayano Fukui",
               sysmbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               infomation: [MentorInfomation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
                Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])
              ),
        Mentor(imageName: "cory",
               nickname: "Cory",
               realName: "Riko Yasuda",
               sysmbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               infomation: [MentorInfomation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
                Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])
              ),
        Mentor(imageName: "yuruyuru",
               nickname: "YuruYuru",
               realName: "Yuki Kuwashima",
               sysmbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               infomation: [MentorInfomation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
                Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])
              ),
        Mentor(imageName: "monster",
               nickname: "Monster",
               realName: "Masakaz Ozaki",
               sysmbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               infomation: [MentorInfomation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
                Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])
              ),
        
        
    ]
}
