//  ViewController.swift
//  SummerProject'18
//
//  Created by Meriem Bounab on 5/28/18.
//  Copyright © 2018 Meriem Bounab. All rights reserved.
//
import UIKit
import Lottie

class ChooseLine: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource
{
    @IBOutlet weak var pickerview: UIPickerView!
    @IBOutlet weak var pickerlabel: UILabel!
    let trainLines = ["Union Pacific North" , "Milwaukee North" , "North Central Service" , "Union Pacific Northwest" , "Milwaukee West" , "Union Pacific West" , "BNSF Railway" , "Heritage Corridor" , "SouthWest Service" , "Rock Island District" , "Metra Electric District"]
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
        
        pickerview.dataSource = self
        pickerview.delegate = self
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return trainLines.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return trainLines[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerlabel.text = trainLines[row]
    }
   
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
    
}

