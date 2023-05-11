//
//  ShopRouter.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import Foundation
import UIKit

class ShopRouter: PresenterToRouterShopProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = ShopViewController()
        
        let presenter: ViewToPresenterShopProtocol & InteractorToPresenterShopProtocol = ShopPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = ShopRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = ShopInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
