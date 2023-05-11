//
//  LocationProtocols.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewLocationProtocol: AnyObject {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterLocationProtocol {
    
    var view: PresenterToViewLocationProtocol? { get set }
    var interactor: PresenterToInteractorLocationProtocol? { get set }
    var router: PresenterToRouterLocationProtocol? { get set }
    
    func showDetails()
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorLocationProtocol {
    
    var presenter: InteractorToPresenterLocationProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterLocationProtocol: AnyObject {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterLocationProtocol {
    func presentNewViewController(from view: PresenterToViewLocationProtocol)
}
