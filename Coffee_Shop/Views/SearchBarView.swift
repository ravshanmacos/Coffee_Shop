//
//  SearchBarView.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/11.
//

import UIKit

final class SearchBarView: BaseView{
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = R_Color.tabbar.inActive
        imageView.image = R_Images.searchIcon
        return imageView
    }()
    
    private let textField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Search"
        return textfield
    }()
    
    override func setupViews() {
        super.setupViews()
        addSubviews(imageView, textField)
    }
    
    override func setupContstraints() {
        super.setupContstraints()
        imageView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(10)
            make.height.width.equalTo(20)
        }
        textField.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(imageView.snp.trailing).offset(10)
            make.trailing.equalToSuperview().offset(-10)
        }
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
    
}
