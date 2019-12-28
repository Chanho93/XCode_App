//
//  Place.swift
//  Project_4
//
//  Created by std_1210_03 on 2018. 6. 5..
//  Copyright © 2018년 Chan-Ho Lee. All rights reserved.
//

import UIKit
import MapKit

class Place: NSObject, MKAnnotation {
    
    let title: String?
    let subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }

}
