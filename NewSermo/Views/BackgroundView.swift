//
//  BackgroundView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 10/9/21.
//

import SwiftUI

struct BackgroundView: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(imageName: ImageAsset.menuBackground)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
