//
//  ViewController.swift
//  Trafficlights
//
//  Created by Vasilii on 24/07/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var redlightView: UIView!
    @IBOutlet weak var yellowlightView: UIView!
    @IBOutlet weak var greenlightView: UIView!
    
    var lighVavue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redlightView.layer.cornerRadius = redlightView.layer.bounds.size.height / 3.1415
        yellowlightView.layer.cornerRadius = yellowlightView.layer.visibleRect.size.height / 3.1415
        greenlightView.layer.cornerRadius = greenlightView.layer.visibleRect.size.height / 3.1415
        
        redlightView.backgroundColor = UIColor.red
        yellowlightView.backgroundColor = UIColor.yellow
        greenlightView.backgroundColor = UIColor.green
        
        redlightView.alpha = 0.3
        yellowlightView.alpha = 0.3
        greenlightView.alpha = 0.3
        
    }


    @IBAction func startButtonAction(_ sender: Any) {
        
        startButton.setTitle("NEXT", for: .normal)
        
        lighVavue = lighVavue == 3 ? 1 : lighVavue + 1
        
        redlightView.alpha = 0.3
        yellowlightView.alpha = 0.3
        redlightView.alpha = 0.3
        
        switch lighVavue {
        case 1:
            redlightView.alpha = 1
        case 2:
            yellowlightView.alpha = 1
        case 3:
            greenlightView.alpha = 1
        default:
            break
        }
        
    }
}

