//
//  DetailsRouter.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/11.
//  
//

import Foundation
import UIKit

class DetailsRouter: PresenterToRouterDetailsProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = DetailsViewController()
        
        let presenter: ViewToPresenterDetailsProtocol & InteractorToPresenterDetailsProtocol = DetailsPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = DetailsRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = DetailsInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
