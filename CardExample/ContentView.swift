//
//  ContentView.swift
//  CardExample
//
//  Created by Masakaz Ozaki on 2021/11/21.
//

import SwiftUI

struct ContentView: View {

    
    var body: some View {
        Text("Hello World !")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Inventory(mentors: DataModel.mentors))
    }
}
