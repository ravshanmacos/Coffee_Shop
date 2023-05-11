//
//  LocationPresenter.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import Foundation

class LocationPresenter: ViewToPresenterLocationProtocol {

    // MARK: Properties
    var view: PresenterToViewLocationProtocol?
    var interactor: PresenterToInteractorLocationProtocol?
    var router: PresenterToRouterLocationProtocol?
    
    func showDetails(){
        guard let router, let view else { return }
        router.presentNewViewController(from: view)
    }
}

extension LocationPresenter: InteractorToPresenterLocationProtocol {
    
}
