//
//  Color-Extension.swift
//  dorogi
//
//  Created by Kviatkovskii on 30.05.17.
//  Copyright © 2017 Kviatkovskii. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, alphaLvl: Float) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: CGFloat(alphaLvl))
    }
    
    convenience init(withHex: Int, alpha: Float) {
        self.init(red: (withHex >> 16) & 0xff, green: (withHex >> 8) & 0xff, blue: withHex & 0xff, alphaLvl: alpha)
    }
}
