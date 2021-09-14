//
//  InitialView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 12/9/21.
//

import SwiftUI

struct InitialOnboardingView: View {
    
    let imageName: String
    
    var body: some View {
        ZStack(alignment: .trailing) {
            BackgroundView(imageName: imageName)
            

            VStack {
                Button(action: {
                    print("Dismiss screen goes here")

                }, label: {
                    Image(ImageAsset.skipButton)
                        .offset(x: -50)
                        .padding(20)
                })
                
                
                Spacer()
                
                
                Button(action: {
                    print("Move next screen goes here")

                }, label: {
                    CircleArrowRightButton(color: .white, size: 44)
                        .offset(x: -50)
                        .padding(20)
            })
            }
        }
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialOnboardingView(imageName: ImageAsset.onboarding1)
    }
}
