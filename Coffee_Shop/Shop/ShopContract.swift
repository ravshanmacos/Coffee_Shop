//
//  ShopContract.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewShopProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterShopProtocol {
    
    var view: PresenterToViewShopProtocol? { get set }
    var interactor: PresenterToInteractorShopProtocol? { get set }
    var router: PresenterToRouterShopProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorShopProtocol {
    
    var presenter: InteractorToPresenterShopProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterShopProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterShopProtocol {
    
}
