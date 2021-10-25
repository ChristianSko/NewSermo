//
//  Category.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 20/9/21.
//

import SwiftUI

enum Category {
    case home
	case park
	case market
}

enum Screen {
	case category
    case flashcard
    case puzzle
    case photo
}

struct Flashcards {
    let flashcards: [Flashcard]
    let color: Color
    let background: [Screen: String]
    let category: Category
}

struct Flashcard {
    let name: String
    let ahapWave: String
    let ahapFile: String
}


struct Categories {
    
    let home = Flashcards(flashcards: [Flashcard(name: "bedroom",
                                                 ahapWave: "",
                                                 ahapFile: ""),
                                      
                                       Flashcard(name: "dinner",
                                                 ahapWave: "",
                                                 ahapFile: ""),
                                       
                                       Flashcard(name: "fork",
                                                 ahapWave: "",
                                                 ahapFile: ""),

                                       Flashcard(name: "pillow",
                                                 ahapWave: "",
                                                 ahapFile: ""),

                                       Flashcard(name: "spoon",
                                                 ahapWave: "",
                                                 ahapFile: ""),
                                       
                                       Flashcard(name: "table",
                                                 ahapWave: "",
                                                 ahapFile: ""),
                                       
                                       Flashcard(name: "window",
                                                 ahapWave: "",
                                                 ahapFile: "")],
                          
                          color: Color.home,
                          background: [.category  : ImageAsset.backgroundHome,
                                        .flashcard : ImageAsset.backgroundHomeFlashcard,
                                        .puzzle    : ImageAsset.backgroundHomePuzzle,
                                        .photo     : ImageAsset.backgroundHomePhoto],
                          category: .home)
    
    let market = Flashcards(flashcards: [Flashcard(name: "apple",
                                                 ahapWave: "",
                                                 ahapFile: ""),
                                      
                                       Flashcard(name: "banana",
                                                 ahapWave: "",
                                                 ahapFile: ""),
                                       
                                       Flashcard(name: "cookie",
                                                 ahapWave: "",
                                                 ahapFile: ""),

                                       Flashcard(name: "eggs",
                                                 ahapWave: "",
                                                 ahapFile: ""),
                                         
                                       Flashcard(name: "kiwi",
                                                 ahapWave: "",
                                                 ahapFile: ""),
                                         
                                       Flashcard(name: "spaghetti",
                                                 ahapWave: "",
                                                 ahapFile: ""),
                                         
                                       Flashcard(name: "fish",
                                                 ahapWave: "",
                                                 ahapFile: "")],
                          
                          color: Color.market,
                            background: [.category   : ImageAsset.backgroundMarket,
                                          .flashcard  : ImageAsset.backgroundMarketFlashcard,
                                          .puzzle     : ImageAsset.backgroundMarketPuzzle,
                                          .photo      : ImageAsset.backgroundMarketPhoto],
                            category: .market)
        
    
    let park = Flashcards(flashcards: [Flashcard(name: "bench",
                                                 ahapWave: "",
                                                 ahapFile: ""),
                                      
                                       Flashcard(name: "duck",
                                                 ahapWave: "",
                                                 ahapFile: ""),
                                       
                                       Flashcard(name: "flower",
                                                 ahapWave: "",
                                                 ahapFile: ""),

                                       Flashcard(name: "garden",
                                                 ahapWave: "",
                                                 ahapFile: ""),

                                       Flashcard(name: "grass",
                                                 ahapWave: "",
                                                 ahapFile: ""),
                                      
                                       Flashcard(name: "playground",
                                                 ahapWave: "",
                                                 ahapFile: ""),
                                       
                                       Flashcard(name: "walk",
                                                 ahapWave: "",
                                                 ahapFile: "")],
                          
                          color: Color.park,
                          background: [.category   : ImageAsset.backgroundPark,
                                        .flashcard  : ImageAsset.backgroundParkFlashcard,
                                        .puzzle     : ImageAsset.backgroundParkPuzzle,
                                        .photo      : ImageAsset.backgroundParkPhoto],
                          category: .park)
}

