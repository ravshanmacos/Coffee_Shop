//
//  UIColor+ext.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//

import UIKit

extension UIColor{
    
    static let lavender = UIColor(hexString: "#F7F9FC")
    static let blackGray = UIColor(hexString: "#222831")
    static let shaleGray = UIColor(hexString: "#393E46")
    static let orange = UIColor(hexString: "#F94510")
    static let fern = UIColor(hexString: "#93BF72")
    static let tangerine = UIColor(hexString: "#FF8400")
    static let bondiWaters = UIColor(hexString: "#00ADB5")
    
    
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}
