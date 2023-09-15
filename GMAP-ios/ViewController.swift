//
//  ViewController.swift
//  GMAP-ios
//
//  Created by Ravi Shah on 15/09/23.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    
    
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        GMSServices.provideAPIKey("AIzaSyAKI2FTFyc4k7OOIAK7kwhaJ9OFJBT6tNE")
        
        print("License \n \n \(GMSServices.openSourceLicenseInfo())")
    }
    
    //MARK: Functions Here's
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first
        else{
            return
        }
        
        let coordinates = location.coordinate
        let camera = GMSCameraPosition.camera(withLatitude: coordinates.latitude, longitude: coordinates.longitude, zoom: 10.0)
        let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
        self.view.addSubview(mapView)
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude:coordinates.latitude, longitude: coordinates.longitude)
        marker.title = title
        marker.snippet = ""
        marker.map = mapView
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    
}
