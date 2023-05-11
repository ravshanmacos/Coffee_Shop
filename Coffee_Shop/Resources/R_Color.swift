//
//  R_Color.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//

import UIKit

struct R_Color{
    
    static let success = UIColor.bondiWaters
    static let warning = UIColor(hexString: "#F44336")
    static let danger = UIColor(hexString: "#BF0E08")
    static let textLight = UIColor(hexString: "#4E535A")
    
    struct tabbar{
        static let active = UIColor.bondiWaters
        static let inActive = UIColor(hexString: "#222831")
    }
    
    struct background{
        static let defaultBck = UIColor.lavender
        static let darker = UIColor(hexString: "#F5F6F7")
    }
    
    struct text{
        static let muted = UIColor(hexString: "#84888E")
        static let defaultTxt = UIColor(hexString: "#425A70")
    }
    
    struct border{
        static let muted = UIColor(hexString: "#EDF0F2")
        static let defaultBdr = UIColor(hexString: "#E4E7EB")
    }
    
    struct navbar{
        static let grayish = UIColor(hexString: "#5D5E5F")
    }
    
    struct searchbar{
        static let background = UIColor(hexString: "#F7F9FC")
    }
}
