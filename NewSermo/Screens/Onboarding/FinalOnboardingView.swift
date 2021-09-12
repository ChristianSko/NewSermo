//
//  FinalView.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 12/9/21.
//

import SwiftUI

struct FinalOnboardingView: View {
    
    let imageName: String
    
    var body: some View {
        BackgroundView(imageName: imageName)
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalOnboardingView(imageName: ImageAsset.onboarding5)
    }
}
