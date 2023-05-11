//
//  OrdersRouter.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import Foundation
import UIKit

class OrdersRouter: PresenterToRouterOrdersProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = OrdersViewController()
        
        let presenter: ViewToPresenterOrdersProtocol & InteractorToPresenterOrdersProtocol = OrdersPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = OrdersRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = OrdersInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
