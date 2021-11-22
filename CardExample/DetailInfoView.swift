//
//  DetailInfoView.swift
//  CardExample
//
//  Created by Masakaz Ozaki on 2021/11/22.
//

import SwiftUI

struct DetailInfoView: View {
    var info: MentorInformation
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(info.title)
                .font(.headline)
                .foregroundColor(Color("white65"))
                .bold()
            Text(info.body)
                .foregroundColor(Color("white95"))
        }
    }
}

struct DetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfoView(info: MentorInformation(title: "座右の銘",
                                              body: "Laudem et voluptates repudiandae sint et voluptates omittantur maiorum dolorum."))
    }
}
