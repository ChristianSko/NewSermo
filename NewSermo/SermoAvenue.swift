//
//  NewSermoApp.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 9/9/21.
//

import SwiftUI

@main
struct SermoAvenue: App {
    
    @State var userPassedOnboarding = false
    
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
