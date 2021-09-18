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
        ZStack{
            ZStack(alignment: .bottomTrailing){
                BackgroundView(imageName: imageName)
                
                Button(action: {
                    print("Banana sound goes here")

                }, label: {
                    CircleArrowButton(color: .white, size: 44)
                        .offset(x: -50)
                        .padding(20)
                })
            }
            
            if imageName == ImageAsset.onboarding4{
                Button(action: {
                    print("Move next screen goes here")

                }, label: {
                    Image("banana-button")
                        .padding(20)

                })
                .offset(x: 140, y: -40)
            }
        }
    }
}

struct GenericOnboarding_Previews: PreviewProvider {
    static var previews: some View {
        GenericOnboardingView(imageName: ImageAsset.onboarding2)
    }
}
