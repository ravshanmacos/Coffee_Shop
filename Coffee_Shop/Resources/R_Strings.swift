//
//  R_Strings.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//

import Foundation

struct R_Strings{
    struct tabbar{
        static func getTitle(for tab: Tabs)->String{
            switch tab {
            case .location: return "Location"
            case .shop: return "Shop"
            case .orders: return "Orders"
            case .basket: return "Basket"
            case .profile: return "Profile"
            }
        }
    }
}
