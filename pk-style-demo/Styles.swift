//
//  Styles.swift
//  pk-style-demo
//
//  Created by Paul Kim on 7/25/16.
//  Copyright © 2016 Paul Kim. All rights reserved.
//

import UIKit

enum MyStyle: String {
    case MyStyle1
    case MyStyle2
    
    var color: CGColor {
        switch self {
        case .MyStyle1: return UIColor.yellowColor().CGColor
        case .MyStyle2: return UIColor.redColor().CGColor
        }
    }
}

enum ButtonStyle: String {
    case Primary
    case Secondary
    
    
}

struct Color {
    
    static let black = UIColor.blackColor()
    static let tint = UIColor.greenColor()
}

struct Alpha {
    
    static let none     = CGFloat(0.0)
    static let veryLow  = CGFloat(0.05)
    static let low      = CGFloat(0.30)
    static let medium1  = CGFloat(0.40)
    static let medium2  = CGFloat(0.50)
    static let medium3  = CGFloat(0.60)
    static let high     = CGFloat(0.87)
    static let full     = CGFloat(1.0)
}

struct Font {
    
    static func withSize(size: CGFloat, weight: CGFloat) -> UIFont {
        return UIFont.systemFontOfSize(size, weight: weight)
    }
}

extension TextStyle {
    
    static let body = TextStyle(
        font: Font.withSize(15.0, weight: UIFontWeightRegular),
        color: Color.black
    )
    
    static let title = TextStyle(
        font: Font.withSize(20.0, weight: UIFontWeightLight),
        color: Color.black
    )
}

extension TextStyle {
    
    struct Button {
        static let action = TextStyle(
            font: Font.withSize(16.0, weight: UIFontWeightMedium),
            color: Color.tint
        )
    }
}

