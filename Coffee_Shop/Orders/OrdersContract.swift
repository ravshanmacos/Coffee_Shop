//
//  OrdersContract.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewOrdersProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterOrdersProtocol {
    
    var view: PresenterToViewOrdersProtocol? { get set }
    var interactor: PresenterToInteractorOrdersProtocol? { get set }
    var router: PresenterToRouterOrdersProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorOrdersProtocol {
    
    var presenter: InteractorToPresenterOrdersProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterOrdersProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterOrdersProtocol {
    
}
