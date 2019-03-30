//
//  MyPin.swift
//  MapPin
//
//  Created by Patrick Bean on 3/29/19.
//  Copyright © 2019 TheDevBean. All rights reserved.
//

import UIKit
import MapKit

class MyPin: MKPointAnnotation {
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D) {
        super.init()
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }

}
