//
//  DetailsContract.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/11.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewDetailsProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterDetailsProtocol {
    
    var view: PresenterToViewDetailsProtocol? { get set }
    var interactor: PresenterToInteractorDetailsProtocol? { get set }
    var router: PresenterToRouterDetailsProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorDetailsProtocol {
    
    var presenter: InteractorToPresenterDetailsProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterDetailsProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterDetailsProtocol {
    
}
