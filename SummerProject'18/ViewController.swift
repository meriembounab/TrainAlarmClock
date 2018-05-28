//
//  ViewController.swift
//  SummerProject'18
//
//  Created by Meriem Bounab on 5/28/18.
//  Copyright © 2018 Meriem Bounab. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    let animationView = LOTAnimationView(name:"gdTrainSummer")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width , height: 667)
        animationView.contentMode = .scaleAspectFill
        
        animationView.loopAnimation = true
        
        self.view.addSubview(animationView)
        
        animationView.play()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

