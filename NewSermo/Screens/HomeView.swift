//
//  ContentView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 9/9/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

// To see the preview in Landscape at this in the previews(requires Xcode 13 beta)
//
// ContentView()
//.previewInterfaceOrientation(.landscapeLeft)


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
        }
    }
}
