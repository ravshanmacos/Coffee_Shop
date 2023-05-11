//
//  BasketPresenter.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import Foundation

class BasketPresenter: ViewToPresenterBasketProtocol {

    // MARK: Properties
    var view: PresenterToViewBasketProtocol?
    var interactor: PresenterToInteractorBasketProtocol?
    var router: PresenterToRouterBasketProtocol?
}

extension BasketPresenter: InteractorToPresenterBasketProtocol {
    
}
