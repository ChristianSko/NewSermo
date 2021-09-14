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
                    .ignoresSafeArea()
                
                HStack{

                    NavigationLink(destination: CategoryView(backgroundImage: ImageAsset.backgroundMarket)) {
                        CategoryButton(imageName: ImageAsset.categoryMarketIcon)
                            .offset(y: 20)
                    }

                    NavigationLink(destination: CategoryView(backgroundImage: ImageAsset.backgroundPark)) {
                        CategoryButton(imageName: ImageAsset.categoryParkIcon)
                            .offset(y: -30)
                    }

                    NavigationLink(destination: CategoryView(backgroundImage: ImageAsset.backgroundHome)) {
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

// To see the preview in Landscape add this in the previews(requires Xcode 13 beta)
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
