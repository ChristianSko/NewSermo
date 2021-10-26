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
	let syllables: Int
}


struct Categories {
    
    let home = Flashcards(flashcards: [Flashcard(name: "bedroom",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 2),
                                      
                                       Flashcard(name: "dinner",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 2),
                                       
                                       Flashcard(name: "fork",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 1),

                                       Flashcard(name: "pillow",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 2),

                                       Flashcard(name: "spoon",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 1),
                                       
                                       Flashcard(name: "table",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 2),
                                       
                                       Flashcard(name: "window",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 2)],
                          
                          color: Color.home,
                          background: [.category  : ImageAsset.backgroundHome,
                                        .flashcard : ImageAsset.backgroundHomeFlashcard,
                                        .puzzle    : ImageAsset.backgroundHomePuzzle,
                                        .photo     : ImageAsset.backgroundHomePhoto],
                          category: .home)
    
    let market = Flashcards(flashcards: [Flashcard(name: "apple",
                                                 ahapWave: "",
												   ahapFile: "",
												   syllables: 2),
                                      
                                       Flashcard(name: "banana",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 3),
                                       
                                       Flashcard(name: "cookie",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 2),

                                       Flashcard(name: "eggs",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 1),
                                         
                                       Flashcard(name: "kiwi",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 2),
                                         
                                       Flashcard(name: "spaghetti",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 3),
                                         
                                       Flashcard(name: "fish",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 1)],
                          
                          color: Color.market,
                            background: [.category   : ImageAsset.backgroundMarket,
                                          .flashcard  : ImageAsset.backgroundMarketFlashcard,
                                          .puzzle     : ImageAsset.backgroundMarketPuzzle,
                                          .photo      : ImageAsset.backgroundMarketPhoto],
                            category: .market)
        
    
    let park = Flashcards(flashcards: [Flashcard(name: "bench",
                                                 ahapWave: "",
												 ahapFile: "", syllables: 1),
                                      
                                       Flashcard(name: "duck",
                                                 ahapWave: "",
												 ahapFile: "", syllables: 1),
                                       
                                       Flashcard(name: "flower",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 2),

                                       Flashcard(name: "garden",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 2),

                                       Flashcard(name: "grass",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 1),
                                      
                                       Flashcard(name: "playground",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 2),
                                       
                                       Flashcard(name: "walk",
                                                 ahapWave: "",
												 ahapFile: "",
												 syllables: 1)],
                          
                          color: Color.park,
                          background: [.category   : ImageAsset.backgroundPark,
                                        .flashcard  : ImageAsset.backgroundParkFlashcard,
                                        .puzzle     : ImageAsset.backgroundParkPuzzle,
                                        .photo      : ImageAsset.backgroundParkPhoto],
                          category: .park)
}

