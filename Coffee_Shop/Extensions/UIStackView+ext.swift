//
//  UIStackView+ext.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//
import UIKit

extension UIStackView{
    func addArrangedSubviews(_ views: UIView...){
        views.forEach{addArrangedSubview($0)}
    }
}
