//
//  Onboarding.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 12/9/21.
//

import SwiftUI

struct Onboarding: View {
    
    @Binding var userPassedOnboarding: Bool

    var body: some View {
        ScrollView {
            TabView {
                InitialOnboardingView(imageName: ImageAsset.onboarding1, onBoardingState: $userPassedOnboarding)
                GenericOnboardingView(imageName: ImageAsset.onboarding2)
                GenericOnboardingView(imageName: ImageAsset.onboarding3)
                GenericOnboardingView(imageName: ImageAsset.onboarding4)
                FinalOnboardingView(imageName: ImageAsset.onboarding5,
                                    onBoardingState: $userPassedOnboarding)
            }
            .frame(width: UIScreen.main.bounds.width ,
                   height: UIScreen.main.bounds.height)
            .tabViewStyle(PageTabViewStyle())
        }
        .edgesIgnoringSafeArea(.all)
    }
}


//There is a bug on Apple's side for for showing tabview that ignore edges -> https://stackoverflow.com/questions/62593923/edgesignoringsafearea-on-tabview-with-pagetabviewstyle-not-working
// Using above implementation until it's fixed.


//struct Onboarding: View {
//    var body: some View {
//
//            TabView {
//                InitialOnboardingView(imageName: ImageAsset.onboarding1)
//                GenericOnboardingView(imageName: ImageAsset.onboarding2)
//                GenericOnboardingView(imageName: ImageAsset.onboarding3)
//                GenericOnboardingView(imageName: ImageAsset.onboarding4)
//                FinalOnboardingView(imageName: ImageAsset.onboarding5)
//            }
//            .tabViewStyle(PageTabViewStyle())
//            .ignoresSafeArea(.all, edges: .all)
//
//    }
//}

struct Onboarding_Previews: PreviewProvider {
    
    @State static var userPassedOnboarding = false
    
    static var previews: some View {
        Group {
            Onboarding(userPassedOnboarding: $userPassedOnboarding)
                .preferredColorScheme(.dark)
        }
    }
}
