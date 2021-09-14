//
//  FinalView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 12/9/21.
//

import SwiftUI

struct FinalOnboardingView: View {
    
    let imageName: String
    
    var body: some View {
        ZStack{
            ZStack(alignment: .bottomTrailing){
                BackgroundView(imageName: imageName)
                
                Button(action: {
                    print("Dismiss screen goes here")
                }, label: {
                    Image(ImageAsset.playButton)
                        .offset(x: -50)
                        .padding(20)
                        .shadow(color: .black, radius: 4, x: 2, y: 2)
                })
            }
            HStack{
                Button(action: {
                    print("wall-button")
                }, label: {
                    Image("wall-button")
                        .padding(20)
                })
                
                Button(action: {
                    print("walk-button")
                }, label: {
                    Image("walk-button")
                        .padding(20)
                })
            }
        }
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalOnboardingView(imageName: ImageAsset.onboarding5)
    }
}
