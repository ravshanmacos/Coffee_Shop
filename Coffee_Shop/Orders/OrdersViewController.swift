//
//  OrdersViewController.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import UIKit

class OrdersViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Orders"
    }

    // MARK: - Properties
    var presenter: ViewToPresenterOrdersProtocol?
    
}

extension OrdersViewController: PresenterToViewOrdersProtocol{
    // TODO: Implement View Output Methods
}
