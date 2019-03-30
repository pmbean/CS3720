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
        
        var annotation1 = MyPin(title: "Swansea Bay", subtitle: "Beautiful Beaches", coordinate: CLLocationCoordinate2D(latitude: 51.587736, longitude: -3.90152))
        
        var annotation2 = MyPin(title: "Menai Bridge", subtitle: "Fantastic Engineering", coordinate: CLLocationCoordinate2D(latitude:53.220527, longitude: -4.163561))
        
        var annotation3 = MyPin(title: "Paroh Dearc Y Scarlets", subtitle: "Beautiful Beaches", coordinate: CLLocationCoordinate2D(latitude: 51.678809, longitude: -4.127469))
        
        var annotation4 = MyPin(title: "Castell Coch", subtitle: "A Fairytale Castle", coordinate: CLLocationCoordinate2D(latitude: 51.535819, longitude: -3.2547))
        
        var annotation5 = MyPin(title: "Arthur's Stone", subtitle: "Rock Of Legend", coordinate: CLLocationCoordinate2D(latitude: 51.593735, longitude: -4.179525))
        
        mapView.addAnnotation(annotation1)
        mapView.addAnnotation(annotation2)
        mapView.addAnnotation(annotation3)
        mapView.addAnnotation(annotation4)
        mapView.addAnnotation(annotation5)
    }


}

