//
//  ProfileRouter.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import Foundation
import UIKit

class ProfileRouter: PresenterToRouterProfileProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = ProfileViewController()
        
        let presenter: ViewToPresenterProfileProtocol & InteractorToPresenterProfileProtocol = ProfilePresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = ProfileRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = ProfileInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
