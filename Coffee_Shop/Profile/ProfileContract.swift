//
//  ProfileContract.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewProfileProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterProfileProtocol {
    
    var view: PresenterToViewProfileProtocol? { get set }
    var interactor: PresenterToInteractorProfileProtocol? { get set }
    var router: PresenterToRouterProfileProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorProfileProtocol {
    
    var presenter: InteractorToPresenterProfileProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterProfileProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterProfileProtocol {
    
}
