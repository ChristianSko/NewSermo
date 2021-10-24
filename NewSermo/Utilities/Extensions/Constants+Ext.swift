//
//  Constants.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 10/9/21.
//

import Foundation
import SwiftUI



// MARK: - IMAGE ASSET STRINGS
enum ImageAsset {
    
    // Onboarding Assets
    static let onboarding1 = "onboarding_1"
    static let onboarding2 = "onboarding_2"
    static let onboarding3 = "onboarding_3"
    static let onboarding4 = "onboarding_4"
    static let onboarding5 = "onboarding_5"
    
    // App Background Assets
    
    static let menuBackground               = "background-menu"
    
    static let backgroundMarket             = "background-market"
    static let backgroundPark               = "background-park"
    static let backgroundHome               = "background-home"
    
    static let backgroundMarketFlashcard    = "backgroundmixflashcard-market"
    static let backgroundParkFlashcard      = "backgroundmixflashcard-park"
    static let backgroundHomeFlashcard      = "backgroundmixflashcard-home"
    
    static let backgroundMarketPuzzle       = "backgroundpuzzle-market"
    static let backgroundParkPuzzle         = "backgroundpuzzle-park"
    static let backgroundHomePuzzle         = "backgroundpuzzle-home"
    
    static let backgroundMarketPhoto        = "backgroundmixfind-market"
    static let backgroundParkPhoto          = "backgroundmixfind-park"
    static let backgroundHomePhoto          = "backgroundmixfind-home"
    
    // Buttons Assets
    static let categoryMarketIcon           = "category-market"
    static let categoryParkIcon             = "category-park"
    static let categoryHomeIcon             = "category-home"
    
    static let skipButton                   = "skip"
    static let playButton                   = "play"
    
}

extension Color {
    static let market = Color.blue
    static let park   = Color.red
    static let home   = Color.purple
    
}


// MARK: -SF SYMBOLS STRINGS
enum SFSymbols {
    
    static let arrowRight = "arrow.right.circle"
    static let photos = "photo.on.rectangle"
    static let puzzle = "puzzlepiece"
    
}
