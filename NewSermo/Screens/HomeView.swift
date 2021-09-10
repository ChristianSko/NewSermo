//
//  ContentView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 9/9/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
    NavigationView {
        ZStack {
                BackgroundView(imageName: ImageAsset.menuBackground)
                
                HStack{

                    NavigationLink(destination: CategoryView()) {
                        CategoryButton(imageName: ImageAsset.categoryMarketIcon)
                            .offset(y: 20)
                    }

                    NavigationLink(destination: CategoryView()) {
                        CategoryButton(imageName: ImageAsset.categoryParkIcon)
                            .offset(y: -30)
                    }

                    NavigationLink(destination: CategoryView()) {
                        CategoryButton(imageName: ImageAsset.categoryHomeIcon)
                            .offset(y: 20)
                    }
                }
            }
            .navigationBarHidden(true)
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

struct CategoryButton: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 240,
                   height: 190)
            .aspectRatio(contentMode: .fit)
    }
}
