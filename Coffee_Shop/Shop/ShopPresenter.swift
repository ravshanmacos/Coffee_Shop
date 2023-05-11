//
//  ShopPresenter.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import Foundation

class ShopPresenter: ViewToPresenterShopProtocol {

    // MARK: Properties
    var view: PresenterToViewShopProtocol?
    var interactor: PresenterToInteractorShopProtocol?
    var router: PresenterToRouterShopProtocol?
}

extension ShopPresenter: InteractorToPresenterShopProtocol {
    
}
