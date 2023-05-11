//
//  OrdersPresenter.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import Foundation

class OrdersPresenter: ViewToPresenterOrdersProtocol {

    // MARK: Properties
    var view: PresenterToViewOrdersProtocol?
    var interactor: PresenterToInteractorOrdersProtocol?
    var router: PresenterToRouterOrdersProtocol?
}

extension OrdersPresenter: InteractorToPresenterOrdersProtocol {
    
}
