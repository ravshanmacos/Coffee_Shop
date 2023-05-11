//
//  LocationRouter.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import Foundation
import UIKit

class LocationRouter: PresenterToRouterLocationProtocol {
    
    
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        //creating instace of view controller
        let viewController = LocationViewController()
        var presenter: ViewToPresenterLocationProtocol & InteractorToPresenterLocationProtocol = LocationPresenter()
        var interactor: PresenterToInteractorLocationProtocol = LocationInteractor()
        
        viewController.presenter = presenter
        
        presenter.router = LocationRouter()
        presenter.view = viewController
        
        interactor = LocationInteractor()
        interactor.presenter = presenter
        
        return viewController
    }
    
    func presentNewViewController(from view: PresenterToViewLocationProtocol){
        let vc = SearchCafeController()
        
        if let sourceView = view as? UIViewController{
            sourceView.navigationController?.present(vc, animated: true)
        }
    }
    
}
