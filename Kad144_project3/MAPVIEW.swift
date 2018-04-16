//
//  MAPVIEW.swift
//  pre Project 3
//
//  Created by kenean dukamo on 4/8/18.
//  Copyright © 2018 kenean dukamo. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class MAPVIEW: UIViewController,MKMapViewDelegate {

    @IBOutlet var myMAp: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("map page loaded")
       self.myMAp.delegate=self
        myMAp.showsUserLocation = true
 
        let shopLocation = CLLocationCoordinate2DMake(41.076592, -81.513060)
        
        let pin = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegion(center: shopLocation, span: pin)
        myMAp.setRegion(region, animated: true)
        
        let annotaion = MKPointAnnotation()
        annotaion.coordinate = shopLocation
        annotaion.title="daye bensa coffee Shop"
        annotaion.subtitle="come see us"
        myMAp.addAnnotation(annotaion)
       
        
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    



}
