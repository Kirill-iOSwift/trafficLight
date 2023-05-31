//
//  ViewController.swift
//  trafficLight
//
//  Created by Кирилл on 28.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var trafficLightColorRed: UIView!
    @IBOutlet var trafficLightColorYellow: UIView!
    @IBOutlet var trafficLightColorGreen: UIView!
    @IBOutlet var trafficLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficLightColorRed.layer.cornerRadius = 85
        trafficLightColorYellow.layer.cornerRadius = 85
        trafficLightColorGreen.layer.cornerRadius = 85
        trafficLightButton.layer.cornerRadius = 20
        
        trafficLightColorRed.alpha = 0.3
        trafficLightColorYellow.alpha = 0.3
        trafficLightColorGreen.alpha = 0.3
        
    }
    
    @IBAction func trafficLightButtonDidTapped() {
        trafficLightButton.setTitle("NEXT", for: .normal)
        
        
        if trafficLightColorRed.alpha == 1 {
            trafficLightColorYellow.alpha = 1
            trafficLightColorRed.alpha = 0.3
        } else  if trafficLightColorYellow.alpha == 1 {
            trafficLightColorGreen.alpha = 1
            trafficLightColorYellow.alpha = 0.3
        } else {
            trafficLightColorGreen.alpha = 0.3
            trafficLightColorRed.alpha = 1
        }
        
    }
}
