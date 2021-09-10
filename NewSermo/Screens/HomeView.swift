//
//  ContentView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 9/9/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            BackgroundView(imageName: ImageAsset.homeBackground)
            }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
        }
    }
}

// To see the preview in Landscape at this in the previews(requires Xcode 13 beta)
//
// HomeView()
//.previewInterfaceOrientation(.landscapeLeft)
