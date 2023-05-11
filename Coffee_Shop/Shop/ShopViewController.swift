//
//  ShopViewController.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import UIKit

class ShopViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Shop"
    }

    // MARK: - Properties
    var presenter: ViewToPresenterShopProtocol?
    
}

extension ShopViewController: PresenterToViewShopProtocol{
    // TODO: Implement View Output Methods
}
