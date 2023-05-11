//
//  TabBarController.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//

import UIKit

enum Tabs: Int, CaseIterable{
    case location
    case shop
    case orders
    case basket
    case profile
}

final class TabBarController: UITabBarController{
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configureUI()
        configureControllers()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension TabBarController{
    private func configureUI(){
        
        tabBar.tintColor = R_Color.tabbar.active
        tabBar.barTintColor = R_Color.tabbar.inActive
        tabBar.backgroundColor = .white
        
        tabBar.layer.masksToBounds = false
        tabBar.layer.shadowColor = R_Color.border.defaultBdr.cgColor
        tabBar.layer.shadowOpacity = 1
        tabBar.layer.shadowOffset = CGSize(width: -1, height: 1)
        tabBar.layer.shadowRadius = 6
    }
    
    private func configureControllers(){
        let controllers: [NavBarController] = Tabs.allCases.map { tab in
            let controller = NavBarController(rootViewController: getController(for: tab))
            
            let title = R_Strings.tabbar.getTitle(for: tab)
            let image = R_Images.tabbar.getImage(for: tab)?.withRenderingMode(.alwaysTemplate)
            let tabbarItem = UITabBarItem(title: title, image: image, tag: tab.rawValue)
            
            controller.tabBarItem = tabbarItem
            controller.view.backgroundColor = .white
            return controller
        }
        setViewControllers(controllers, animated: true)
    }
    
    private func getController(for tab: Tabs)->UIViewController{
        let locationRouter = LocationRouter.createModule()
        let shopRouter = ShopRouter.createModule()
        let ordersRouter = OrdersRouter.createModule()
        let basketRouter = BasketRouter.createModule()
        let profileRouter = ProfileRouter.createModule()
        
        switch tab {
        case .location: return locationRouter
        case .shop: return shopRouter
        case .orders: return ordersRouter
        case .basket: return basketRouter
        case .profile: return profileRouter
        }
    }
}
