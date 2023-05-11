//
//  R_Images.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//

import UIKit

struct R_Images{
    
    static let searchIcon = UIImage.init(systemName: "magnifyingglass")
    static let starIcon = UIImage(named: "star_icon")
    static let clockIcon = UIImage(named: "clock_icon")
    static let locationIcon = UIImage.init(systemName: "location.fill")
    
    struct tabbar{
        static func getImage(for tab: Tabs)->UIImage?{
            switch tab {
            case .location: return UIImage(named: "location_icon")
            case .shop: return UIImage(named: "shop_icon")
            case .orders: return UIImage(named: "orders_icon")
            case .basket: return UIImage(named: "basket_icon")
            case .profile: return UIImage(named: "user_icon")
            }
        }
    }
    
    struct navbar{
        static let bell = UIImage(named: "bell_icon")
    }
    
}
