//
//  BaseView.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//

import UIKit

class BaseView: UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupContstraints()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){}
    func setupContstraints(){}
    func configureAppearance(){}
}
