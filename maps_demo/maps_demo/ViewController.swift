//
//  ViewController.swift
//  maps_demo
//
//  Created by Matthew Chung on 12/22/16.
//  Copyright © 2016 Matthew Chung. All rights reserved.
//

import UIKit
import GoogleMaps

class destinations: NSObject {
    
    let name: String
    let location: CLLocationCoordinate2D
    let zoom: Float
    
    init(name: String, location: CLLocationCoordinate2D, zoom: Float) {
        self.name = name
        self.location = location
        self.zoom = zoom
    }
}

class ViewController: UIViewController {
    
    var mapView: GMSMapView?
    
    var currentDestination: destinations
    
    let places = [destinations(name: "Matthew's House", location: CLLocationCoordinate2DMake(39.083758, -76.959197), zoom: 15)]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        GMSServices.provideAPIKey("AIzaSyBkMAB5Ps5k_cby9_9ZBOhk_hMNWu_jJjo")
        
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate 39,-76 at zoom level 10.
        let camera = GMSCameraPosition.camera(withLatitude: 39.083758, longitude: -76.959197, zoom: 15)
        mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let currentLocation = CLLocationCoordinate2DMake(39.083758, -76.959197)
        let marker = GMSMarker(position: currentLocation)
        marker.title = "Matthew's House"
        marker.snippet = "2508 Countryside Drive"
        marker.map = mapView
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(ViewController.next as (ViewController) -> () -> ()))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(ViewController.back))
    }
    
    func next() {
        if let currentDestination = currentDestination {
            currentDestination = places.first!
            mapView?.camera = GMSCameraPosition.camera(withTarget: currentDestination.location, zoom: currentDestination.zoom)
            
            let marker = GMSMarker(position: currentDestination.location)
            marker.title = currentDestination.name
            marker.snippet = "Ellicott Hall"
            marker.map = mapView
        }
        
    }
    
    func back() {
        let nextLocation = CLLocationCoordinate2DMake(39.083758, -76.959197)
        mapView?.camera = GMSCameraPosition.camera(withLatitude: nextLocation.latitude, longitude: nextLocation.longitude, zoom: 15)
        let marker = GMSMarker(position: nextLocation)
        marker.title = "Matthew's House"
        marker.snippet = "2508 Countryside Drive"
        marker.map = mapView
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

