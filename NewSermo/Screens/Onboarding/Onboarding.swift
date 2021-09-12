//
//  Onboarding.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 12/9/21.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        ZStack {
            TabView {
                InitialOnboardingView(imagName: ImageAsset.onboarding1)
                GenericOnboardingView(imageName: ImageAsset.onboarding2)
                GenericOnboardingView(imageName: ImageAsset.onboarding3)
                GenericOnboardingView(imageName: ImageAsset.onboarding4)
                FinalOnboardingView(imageName: ImageAsset.onboarding5)
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Onboarding()
                .preferredColorScheme(.dark)
        }
    }
}
