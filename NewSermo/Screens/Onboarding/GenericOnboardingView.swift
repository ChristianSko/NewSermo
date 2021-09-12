//
//  GenericOnboarding.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 12/9/21.
//

import SwiftUI

struct GenericOnboardingView: View {
    
    let imageName: String
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            BackgroundView(imageName: imageName)
            
            Button(action: {
                print("Move next screen goes here")

            }, label: {
                CircleArrowRightButton(color: .white, size: 44)
                    .offset(x: -80)
                    .padding(20)
            })
        }
    }
}

struct GenericOnboarding_Previews: PreviewProvider {
    static var previews: some View {
        GenericOnboardingView(imageName: ImageAsset.onboarding2)
    }
}
