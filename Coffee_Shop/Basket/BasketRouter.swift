//
//  BasketRouter.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import Foundation
import UIKit

class BasketRouter: PresenterToRouterBasketProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = BasketViewController()
        
        let presenter: ViewToPresenterBasketProtocol & InteractorToPresenterBasketProtocol = BasketPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = BasketRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = BasketInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
