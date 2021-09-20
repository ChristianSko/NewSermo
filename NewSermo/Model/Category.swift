//
//  Category.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 20/9/21.
//

import SwiftUI

struct Categories {
    let home: Flashcards
    let market: Flashcards
    let park: Flashcards
}


struct Flashcards {
    let flashcard: [Flashcard]
    let color: UIColor
    let backgrounds: String
}

struct Flashcard {
    let name: String
    let ahapWave: String
    let ahapFile: String
    let puzzleBackground: String
    let flashcardBackground: String
    let findAndMixBackground: String
}
