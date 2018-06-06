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

    let animationView = LOTAnimationView(name:"newHomeScreen3")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width , height: 600)
        animationView.contentMode = .scaleAspectFill
        
        animationView.loopAnimation = true
        animationView.layer.zPosition = -2.0
        self.view.addSubview(animationView)
        
        animationView.play()
        /*let filePath = Bundle.main.path(forResource: "chivideo", ofType: "gif")
        let gif = NSData(contentsOfFile: (filePath)!)
        let webViewBG = UIWebView(frame: self.view.frame)
        webViewBG.load(gif! as Data, mimeType: "image/gif", textEncodingName: "UTF-8", baseURL: NSURL(string: "")! as URL)
        webViewBG.isUserInteractionEnabled = false
        webViewBG.layer.zPosition = -2.0
        self.view.addSubview(webViewBG)
        */
      
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

