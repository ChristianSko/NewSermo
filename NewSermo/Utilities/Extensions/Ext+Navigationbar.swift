//
//  Ext+Navigationbar.swift
//  NewSermo
//
//  Created by Christian Skorobogatow on 12/9/21.
//

import SwiftUI


extension UINavigationController {
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        #warning("Navbar Requires better fix to be translucent")
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default) // This sets the navigationBar to translucent
    }
}
