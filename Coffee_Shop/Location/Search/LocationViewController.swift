//
//  LocationViewController.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//  
//

import UIKit
import MapKit
import CoreLocation
import SnapKit

class LocationViewController: BaseController {
    
    // MARK: - Properties
    private let mapView: MKMapView = {
       let view = MKMapView()
       // view.overrideUserInterfaceStyle = .dark
        return view
    }()
    
    private let locationBtn: UIButton = {
        var tinted = UIButton.Configuration.tinted()
        tinted.image = R_Images.locationIcon
        tinted.cornerStyle = .capsule
        tinted.baseForegroundColor = R_Color.tabbar.inActive
        return UIButton(configuration: tinted)
    }()
    
    private lazy var locationManager: CLLocationManager = {
        let manager = CLLocationManager()
        manager.delegate = self
        return manager
    }()
    var presenter: ViewToPresenterLocationProtocol?
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Layouts
    override func setupViews() {
        super.setupViews()
        view.addSubviews(mapView, locationBtn)
        view.sendSubviewToBack(mapView)
    }
    override func setupContstraints() {
        super.setupContstraints()
        mapView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.left.right.equalToSuperview()
        }
        locationBtn.snp.makeConstraints { make in
            make.width.height.equalTo(44)
            make.trailing.equalToSuperview().offset(-15)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-15)
        }
    }
    override func configureAppearance() {
        super.configureAppearance()
        addNavBarButton(at: .right, with: R_Images.navbar.bell)
        locationBtn.addTarget(self, action: #selector(locationBtnDidTapped), for: .touchUpInside)
    }
}

extension LocationViewController{
    override func rightBtnTapped() {
        presenter?.showDetails()
    }
    
    @objc func locationBtnDidTapped(){
        // Ask for Authorisation from the User.
        self.locationManager.requestAlwaysAuthorization()

        
    }
}

extension LocationViewController: CLLocationManagerDelegate{
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        
        switch manager.authorizationStatus{
        case .authorizedAlways:
            print("authorizedAlways")
        case .authorizedWhenInUse:
            print("authorizedWhenInUse")
        case .notDetermined:
            print("notDetermined")
        case .denied:
            print("denied")
        case .restricted:
            print("restricted")
        @unknown default:
            fatalError()
        }
        
        manager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
            print("locations = \(locValue.latitude) \(locValue.longitude)")
        mapView.centerToLocation(CLLocation(latitude: locValue.latitude, longitude: locValue.longitude))
    }
    
    func locationManager( _ manager: CLLocationManager, didFailWithError error: Error ) {
        // Handle failure to get a user’s location
        print(error)
    }
}

extension LocationViewController: PresenterToViewLocationProtocol{
    // TODO: Implement View Output Methods
}

