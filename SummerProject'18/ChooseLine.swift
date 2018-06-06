//  ViewController.swift
//  testing
//
//  Created by Nicholas Rosato and Meriem Bounab on 3/1/18.
//  Copyright © 2018 Purdue EPICS ISBVI Magnifier Software Team. All rights reserved.
import UIKit
import Lottie

class ChooseLine: UIViewController
{
     let animationView = LOTAnimationView(name:"border1")
    override func viewDidLoad()
    {
        super.viewDidLoad()
        animationView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width , height: 42)
        animationView.contentMode = .scaleAspectFill
        
        animationView.loopAnimation = true
        animationView.layer.zPosition = -2.0
        self.view.addSubview(animationView)
        
        animationView.play()
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
    
}

