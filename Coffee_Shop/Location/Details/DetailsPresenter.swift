//
//  DetailsPresenter.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/11.
//  
//

import Foundation

class DetailsPresenter: ViewToPresenterDetailsProtocol {

    // MARK: Properties
    var view: PresenterToViewDetailsProtocol?
    var interactor: PresenterToInteractorDetailsProtocol?
    var router: PresenterToRouterDetailsProtocol?
}

extension DetailsPresenter: InteractorToPresenterDetailsProtocol {
    
}
