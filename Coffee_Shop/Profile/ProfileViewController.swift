//
//  ProfileViewController.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import UIKit

class ProfileViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
    }

    // MARK: - Properties
    var presenter: ViewToPresenterProfileProtocol?
    
}

extension ProfileViewController: PresenterToViewProfileProtocol{
    // TODO: Implement View Output Methods
}
