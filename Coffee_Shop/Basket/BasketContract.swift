//
//  BasketContract.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewBasketProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterBasketProtocol {
    
    var view: PresenterToViewBasketProtocol? { get set }
    var interactor: PresenterToInteractorBasketProtocol? { get set }
    var router: PresenterToRouterBasketProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorBasketProtocol {
    
    var presenter: InteractorToPresenterBasketProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterBasketProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterBasketProtocol {
    
}
