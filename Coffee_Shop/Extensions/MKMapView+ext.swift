//
//  MKMapView+ext.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/11.
//

import MapKit

extension MKMapView {
     func centerToLocation( _ location: CLLocation, regionRadius: CLLocationDistance = 6000 ){
       let coordinateRegion = MKCoordinateRegion(
         center: location.coordinate,
         latitudinalMeters: regionRadius,
         longitudinalMeters: regionRadius)
       setRegion(coordinateRegion, animated: true)
     }
}
