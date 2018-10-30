//
//  ViewController.swift
//  Hola Mundo
//
//  Created by Luis Martin de Vidales Palomero on 8/9/18.
//  Copyright © 2018 UPM. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var telecoMap: MKMapView!
    @IBOutlet weak var Slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        msgLabel.alpha = CGFloat(Slider.value)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateSlider(_ sender: UISlider) {
        msgLabel.alpha = CGFloat(sender.value)
    }
    
    @IBAction func updateHola(_ sender: UIButton) {
        msgLabel.text = "Hola"
        
        let center = CLLocationCoordinate2D(latitude: 40.6892091, longitude: -74.044438)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        
        let reg = MKCoordinateRegion(center: center, span: span)
        
        telecoMap.setRegion(reg, animated: true)
        telecoMap.mapType = MKMapType.hybrid
        Slider.setValue(0.5, animated: false)
        msgLabel.alpha = CGFloat(Slider.value)
        
    }
    
    @IBAction func updateMundo(_ sender: UIButton) {
        msgLabel.text = "Mundo"
        let center = CLLocationCoordinate2D(latitude: 40.452445, longitude: -3.726162)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        
        let reg = MKCoordinateRegion(center: center, span: span)
        
        telecoMap.setRegion(reg, animated: true)
        telecoMap.mapType = MKMapType.satellite
    }
    
    @IBAction func updateSol(_ sender: UIButton) {
        msgLabel.text = "Puerta del Sol - Madrid"
        
        let center = CLLocationCoordinate2D(latitude: 40.4167278, longitude: -3.7033387)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        
        let reg = MKCoordinateRegion(center: center, span: span)
        
        telecoMap.setRegion(reg, animated: true)
        telecoMap.mapType = MKMapType.satellite
    }
}

