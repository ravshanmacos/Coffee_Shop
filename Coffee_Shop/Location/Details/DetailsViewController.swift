//
//  DetailsViewController.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/11.
//  
//

import UIKit

class DetailsViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Properties
    var presenter: ViewToPresenterDetailsProtocol?
    
}

extension DetailsViewController: PresenterToViewDetailsProtocol{
    // TODO: Implement View Output Methods
}
