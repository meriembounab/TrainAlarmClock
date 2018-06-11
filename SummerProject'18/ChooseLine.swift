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
  
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var pickerview: UIPickerView!
    @IBOutlet weak var pickerlabel: UILabel!
    
    var text:String = ""
    
    
    let trainLines = ["--Select Track--" , "Union Pacific North (UP-N)" , "Milwaukee District North (MD-N)" , "North Central Service (NCS)" , "Union Pacific Northwest (UP-NW)" , "Milwaukee District West (MD-W)" , "Union Pacific West (UP-W)" , "BNSF Railway (BNSF)" , "Heritage Corridor (HC)" , "SouthWest Service (SWS)" , "Rock Island District (RI)" , "Metra Electric District (ME)"]
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
        
        nextButton.isHidden = true
        
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
        if(pickerlabel.text != "--Select Track--"){
            nextButton.isHidden = false
        }
        else{
            nextButton.isHidden = true
            pickerlabel.text = "None"
        }
        
        text = trainLines[row]
        //print(text)
    }
   
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
            let vc = segue.destination as? ChooseDestination
            vc?.username = pickerlabel.text!
    }
    
    
}

