//
//  DataModel.swift
//  CardExample
//
//  Created by Masakaz Ozaki on 2021/11/21.
//

import SwiftUI

final class DataModel {

    public static let shared = DataModel()
    private init() {}

    var mentors: [Mentor] = [
        Mentor(image: Image("choccho", bundle: .main),
               nickname: "Choccho",
               realName: "Sho Cho",
               cources: "􀫊􀆪􀎶􀛸􀙚􀎑",
               infomation: [MentorInfomation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
                Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])
              ),
        
        Mentor(image: Image("choccho", bundle: .main),
               nickname: "Choccho",
               realName: "Sho Cho",
               cources: "􀫊􀆪􀎶􀛸􀙚􀎑",
               infomation: [MentorInfomation(title: "座右の銘",
                                             body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum.")],
               
               gradient: Gradient(colors: [
                Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
                Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])
              ),
    ]
}
