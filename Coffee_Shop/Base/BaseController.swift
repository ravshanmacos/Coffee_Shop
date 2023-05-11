//
//  BaseController.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//

import UIKit

enum NavbarPosition{
    case left
    case right
}

class BaseController: UIViewController{
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setupViews()
        setupContstraints()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){}
    func setupContstraints(){}
    func configureAppearance(){
        view.backgroundColor = .white
    }
}

@objc extension BaseController{
    func leftBtnTapped(){
        print("left btn tapped")
    }
    
    func rightBtnTapped(){
        print("right btn tapped")
    }
}

extension BaseController{
    func addNavBarButton(at position: NavbarPosition, with image: UIImage?){
        var tinted = UIButton.Configuration.gray()
        tinted.cornerStyle = .capsule
        tinted.image = image
        tinted.baseForegroundColor = R_Color.tabbar.inActive
        let button = UIButton(configuration: tinted)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(leftBtnTapped), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(rightBtnTapped), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
