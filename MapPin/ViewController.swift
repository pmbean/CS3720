//
//  ViewController.swift
//  MapPin
//
//  Created by Patrick Bean on 3/29/19.
//  Copyright © 2019 TheDevBean. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mapView.delegate = self
        let centerPoint = CLLocationCoordinate2D(latitude: 52.011937, longitude: -3.713379)
        let coordinateSpan = MKCoordinateSpan(latitudeDelta: 3.5, longitudeDelta: 3.5)
        let coordinateRegion = MKCoordinateRegion(center: centerPoint, span: coordinateSpan)
        mapView.setRegion(coordinateRegion, animated: false)
        mapView.regionThatFits(coordinateRegion)
        
        var annotation1 = MKPointAnnotation()
        annotation1.title = "Swansea Bay"
        annotation1.subtitle = "Beautiful Beaches"
        annotation1.coordinate = CLLocationCoordinate2D(latitude: 51.587736, longitude: -3.90152)
        
        var annotation2 = MKPointAnnotation()
        annotation2.title = "Menai Bridge"
        annotation2.subtitle = "Fantastic Engineering"
        annotation2.coordinate = CLLocationCoordinate2D(latitude:53.220527, longitude: -4.163561)
        
        var annotation3 = MKPointAnnotation()
        annotation3.title = "Paroh Dearc Y Scarlets"
        annotation3.subtitle = "Beautiful Beaches"
        annotation3.coordinate = CLLocationCoordinate2D(latitude: 51.678809, longitude: -4.127469)
        
        var annotation4 = MKPointAnnotation()
        annotation4.title = "Castell Coch"
        annotation4.subtitle = "A Fairytale Castle"
        annotation4.coordinate = CLLocationCoordinate2D(latitude: 51.535819, longitude: -3.2547)
        
        var annotation5 = MKPointAnnotation()
        annotation5.title = "Arthur's Stone"
        annotation5.subtitle = "Rock Of Legend"
        annotation5.coordinate = CLLocationCoordinate2D(latitude: 51.593735, longitude: -4.179525)
        
        mapView.addAnnotation(annotation1)
        mapView.addAnnotation(annotation2)
        mapView.addAnnotation(annotation3)
        mapView.addAnnotation(annotation4)
        mapView.addAnnotation(annotation5)
    }


}

