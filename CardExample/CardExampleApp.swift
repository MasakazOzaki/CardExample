//
//  CardExampleApp.swift
//  CardExample
//
//  Created by Masakaz Ozaki on 2021/11/21.
//

import SwiftUI

@main
struct CardExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(Inventory(mentors: DataModel.mentors))
        }
    }
}
