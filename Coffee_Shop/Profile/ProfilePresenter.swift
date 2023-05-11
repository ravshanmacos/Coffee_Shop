//
//  ProfilePresenter.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import Foundation

class ProfilePresenter: ViewToPresenterProfileProtocol {

    // MARK: Properties
    var view: PresenterToViewProfileProtocol?
    var interactor: PresenterToInteractorProfileProtocol?
    var router: PresenterToRouterProfileProtocol?
}

extension ProfilePresenter: InteractorToPresenterProfileProtocol {
    
}
