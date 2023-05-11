//
//  CustomCell.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/11.
//

import UIKit

enum CustomCellType{
    case favorite
    case recent
}

final class CustomCell: BaseTableViewCell{
    static let id = "CustomCell"
    
    private let iconView: UIImageView = {
       let view = UIImageView()
        
        return view
    }()
    
    private let textBody: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        return label
    }()
    
    func configure(with text: String, and cellType: CustomCellType){
        switch cellType {
        case .favorite:
            iconView.image = R_Images.starIcon
        case .recent:
            iconView.image = R_Images.clockIcon
        }
        
        textBody.text = text
    }
    
    override func setupViews() {
        super.setupViews()
        addSubviews(iconView, textBody)
    }
    override func setupContstraints() {
        super.setupContstraints()
        iconView.snp.makeConstraints { make in
            make.width.height.equalTo(16)
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(15)
        }
        textBody.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(iconView.snp.trailing).offset(15)
        }
    }
}
