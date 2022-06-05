//
//  DataModel.swift
//  CardExample
//
//  Created by Masakaz Ozaki on 2021/11/21.
//

import SwiftUI

struct DataModel {
    static var mentors: [Mentor] = [
        Mentor(imageName: "monster",
               nickname: "Monster",
               realName: "Masakaz Ozaki",
               symbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               information: [MentorInformation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],

               gradient: Gradient(colors: [
                Color(.sRGB, red: 2 / 255, green: 199 / 255, blue: 255 / 255, opacity: 1),
                Color(.sRGB, red: 226 / 255, green: 56 / 255, blue: 250 / 255, opacity: 1)])
              ),
        Mentor(imageName: "choccho",
               nickname: "Choccho",
               realName: "Sho Cho",
               symbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               information: [MentorInformation(title: "STATEMENT",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum."),
                            MentorInformation(title: "つかってるiPhone",
                                             body: "iPhone 12 Pro Max"),
                            MentorInformation(title: "住んでるところ",
                                             body: "東京のどこか"),
                            MentorInformation(title: "無人島に持ってくならこれ",
                                             body: "Mac, iPhone, ネット, ソーラーパネル"),
                           ],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 0 / 255, green: 0 / 255, blue: 0 / 255, opacity: 1),
                Color(.sRGB, red: 81 / 255, green: 81 / 255, blue: 81 / 255, opacity: 1)])
              ),
        
        Mentor(imageName: "kenty",
               nickname: "Kenty",
               realName: "Kento Katsumata",
               symbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               information: [MentorInformation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
                Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])
              ),
        Mentor(imageName: "piropon",
               nickname: "Piropon",
               realName: "Hiroya Nakajima",
               symbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               information: [MentorInformation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 1, green: 26 / 255, blue: 34 / 255, opacity: 1),
                Color(.sRGB, red: 1, green: 190 / 255, blue: 0, opacity: 1)])
              ),
        Mentor(imageName: "azuki",
               nickname: "Azuki",
               realName: "Hazuki Tamura",
               symbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               information: [MentorInformation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
                Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])
              ),
        Mentor(imageName: "emily",
               nickname: "Emily",
               realName: "Emily Nozaki",
               symbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               information: [MentorInformation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 225 / 255, green: 0 / 255, blue: 203 / 255, opacity: 1),
                Color(.sRGB, red: 250 / 255, green: 232 / 255, blue: 56 / 255, opacity: 1)])
              ),
        Mentor(imageName: "ayanon",
               nickname: "Ayanon",
               realName: "Ayano Fukui",
               symbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               information: [MentorInformation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 74 / 255, green: 255 / 255, blue: 197 / 255, opacity: 1),
                Color(.sRGB, red: 56 / 255, green: 130 / 255, blue: 250 / 255, opacity: 1)])
              ),
        Mentor(imageName: "cory",
               nickname: "Cory",
               realName: "Riko Yasuda",
               symbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               information: [MentorInformation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 225 / 255, green: 0 / 255, blue: 203 / 255, opacity: 1),
                Color(.sRGB, red: 250 / 255, green: 232 / 255, blue: 56 / 255, opacity: 1)])
              ),
        Mentor(imageName: "yuruyuru",
               nickname: "YuruYuru",
               realName: "Yuki Kuwashima",
               symbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               information: [MentorInformation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 255 / 255, green: 255 / 255, blue: 0 / 255, opacity: 1),
                Color(.sRGB, red: 0 / 255, green: 229 / 255, blue: 47 / 255, opacity: 1)])
              ),

        Mentor(imageName: "kimchi",
               nickname: "Kimchi",
               realName: "Yona Kin",
               symbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               information: [MentorInformation(title: "座右の銘",
                                             body: "たのしく生きる")],

               gradient: Gradient(colors: [
                Color(.sRGB, red: 225 / 255, green: 0 / 255, blue: 203 / 255, opacity: 1),
                Color(.sRGB, red: 250 / 255, green: 232 / 255, blue: 56 / 255, opacity: 1)])
              ),
        Mentor(imageName: "toppo",
               nickname: "Toppo",
               realName: "Risako Kato",
               symbolNames: ["swift", "gamecontroller", "globe", "paintbrush", "chevron.left.forwardslash.chevron.right", "film", "cube"],
               information: [MentorInformation(title: "座右の銘",
                                             body: "毎日笑顔")],

               gradient: Gradient(colors: [
                Color(.sRGB, red: 225 / 255, green: 0 / 255, blue: 203 / 255, opacity: 1),
                Color(.sRGB, red: 250 / 255, green: 232 / 255, blue: 56 / 255, opacity: 1)])
              ),

        
        
    ]
}
