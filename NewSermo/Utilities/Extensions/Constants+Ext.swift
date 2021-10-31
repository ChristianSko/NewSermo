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


enum AlertText {
	static let excerciseTitle = "Parent Zone!"
	
	
	static let findExercise = """
  Take this time to explore more characteristics and descriptive words that can be used to categorize the word on the flashcard. This search and find activity provides you and your child with the opportunity to communicate and create a narrative around the word you just learned together. 

  Talk through why certain objects have the same characteristics and why they don’t and try to incorporate other words that you may have learned recently with your child.
  
  Encourage creativity and help him/her observe your environment by talking about what you discover together. Create stories with the elements and objects that you find during your hunt. Remember that every moment is a teachable moment and to raise curiosity in learning new words!
  
  """
	
	static let puzzleExcercise = """
  The puzzle activity here can be used to help break up and slow down a word for better comprehension.
  
  Make sure your child is holding the phone to ensure that they feel the vibrotactile representation of the word.
  
  Remember that repition is an important part of learning a new word. It never hurts to revisit a word for extra verification!
  """
}


// MARK: -SF SYMBOLS STRINGS
enum SFSymbols {
    
    static let arrowRight = "arrow.right.circle"
    static let photos = "photo.on.rectangle"
    static let puzzle = "puzzlepiece"
    
}
