//
//  ViewController.swift
//  TrafficLight
//
//  Created by Илья on 29.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var bottonView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 63
        redLight.alpha = 0.4
        redLight.backgroundColor = .red
        
        yellowLight.layer.cornerRadius = 63
        yellowLight.alpha = 0.4
        yellowLight.backgroundColor = .yellow
        
        greenLight.layer.cornerRadius = 63
        greenLight.alpha = 0.4
        greenLight.backgroundColor = .green
        
        bottonView.layer.cornerRadius = 20
        bottonView.backgroundColor = .white
    }

    @IBAction func bottonAction() {
        bottonView.setTitle("Next", for: .normal)
        
        if greenLight.alpha == 1 {
            greenLight.alpha = 0.4
            redLight.alpha = 1
        } else if redLight.alpha == 1 {
            redLight.alpha = 0.4
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.4
            greenLight.alpha = 1
        } else {
            redLight.alpha = 1
        }
    }
    
}

