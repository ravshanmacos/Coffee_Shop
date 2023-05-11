//
//  UIView+ext.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//

import UIKit

extension UIView{
    func addSubviews(_ views: UIView...){
        views.forEach{addSubview($0)}
    }
}
