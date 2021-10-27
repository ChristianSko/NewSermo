//
//  PuzzleView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 28/9/21.
//

import SwiftUI

struct PuzzleViewS: View {
    
    let syllables: Int
	let flashcard: Flashcard
	let category: Category
	let color: Color
    
    var body: some View {
		if flashcard.syllables == 1 {
			OnePiecePuzzle(flashcard: flashcard, category: category, color: color)
		} else if flashcard.syllables == 2 {
			TwoPiecePuzzle(flashcard: flashcard, category: category, color: color)
        } else {
			ThreePiecePuzzle(flashcard: flashcard, category: category, color: color)
        }
    }
}

struct PuzzleViewS_Previews: PreviewProvider {
    
    static var previews: some View {
		PuzzleViewS(syllables: 1, flashcard: Flashcard(name: "banana", ahapWave: "", ahapFile: "", syllables: 2), category: .market, color: Color.market)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
