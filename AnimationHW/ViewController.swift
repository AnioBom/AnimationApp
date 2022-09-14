//
//  ViewController.swift
//  AnimationHW
//
//  Created by mac on 9/14/22.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: SpringView!
    @IBOutlet var descripeAnimationLabel: SpringLabel!
    @IBOutlet var textButton: UIButton!
    
    let animation = Animation.getAniamtionType()
    
    // let animation: [Animation] = []
    
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        descripeAnimationLabel.text = "\(animation)"
        sender.setTitle("\(animation.preset)", for: .normal)
        
        
    }
    
}

