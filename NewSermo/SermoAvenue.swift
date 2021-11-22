//
//  NewSermoApp.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 9/9/21.
//

import SwiftUI

@main
struct SermoAvenue: App {
    
    // TODO: - Set Up with UserDefaults once app is finished
	@AppStorage("userPassedOnboarding") var userPassedOnboarding: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if userPassedOnboarding{
                HomeView()
            } else {
                Onboarding(userPassedOnboarding: $userPassedOnboarding)
            }
        }
    }
}
