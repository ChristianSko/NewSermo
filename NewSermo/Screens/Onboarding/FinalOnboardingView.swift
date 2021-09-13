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
        
        ZStack(alignment: .bottomTrailing){
            BackgroundView(imageName: imageName)
            
            Button(action: {
                print("Dismiss screen goes here")
            }, label: {
                Image(ImageAsset.playButton)
                    .offset(x: -80)
                    .padding(20)
                    .shadow(color: .black, radius: 4, x: 2, y: 2)
            })
        }
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalOnboardingView(imageName: ImageAsset.onboarding5)
    }
}
