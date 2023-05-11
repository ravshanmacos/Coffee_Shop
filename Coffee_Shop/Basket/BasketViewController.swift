//
//  BasketViewController.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import UIKit

class BasketViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Basket"
    }

    // MARK: - Properties
    var presenter: ViewToPresenterBasketProtocol?
    
}

extension BasketViewController: PresenterToViewBasketProtocol{
    // TODO: Implement View Output Methods
}
