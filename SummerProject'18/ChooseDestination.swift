//
//  ChooseDestination.swift
//  SummerProject'18
//
//  Created by Meriem Bounab on 6/10/18.
//  Copyright © 2018 Meriem Bounab. All rights reserved.
//

import UIKit
import Lottie

class ChooseDestination:UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
{
    
    @IBOutlet weak var pickerDest: UIPickerView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var pickerlabel: UILabel!
    
    var username:String = ""
    
    var trainLines = [""]
    let animationView = LOTAnimationView(name: "border1")
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width , height: 42)
        
        animationView.contentMode = .scaleAspectFill
        
        animationView.loopAnimation = true
        animationView.layer.zPosition = -2.0
        self.view.addSubview(animationView)
        
        animationView.play()
        
        pickerDest.dataSource = self
        pickerDest.delegate = self
        
        nextButton.isHidden = true
        
        if (username == "Union Pacific North (UP-N)"){
           // pickerlabel.text = "hi there!"
            trainLines = ["Ogilvie Transportation Center" , "Clybourn" , "Ravenswood" , "Rogers Park" , "Main St., Evanston" , "Davis St., Evanston" , "Central St., Evanston" , "Wilmette" , "Kenilworth" , "Indian Hill" , "Winnetka" , "Hubbard Woods" , "Glencoe" , "Braeside" , "Ravinia Park" , "Ravinia" , "Highland Park" , "Highwood" , "Fort Sheridan" , "Lake Forest" , "Lake Bluff" , "Great Lakes" , "North Chicago" , "Waukegan" , "Zion" , "Winthrop Harbor" , "Kenosha, Wisconsin"]
        }
        else if (username == "Milwaukee District North (MD-N)")
        {
            trainLines = ["Union Station" , "Western Ave." , "Healy" , "Grayland" , "Mayfair" , "Forest Glen" , "Edgebrook" , "Morton Grove" , "Golf" , "Glenview" , "Glen/N. Glenview" , "Northbrook" , "Lake Cook Rd." , "Deerfield" , "Lake Forest" , "Liberty ville" , "Prairie Crossing" , "Grayslake" , "Round Lake" , "Long Lake" , "Ingleside" , "Fox Lake"]
        }
        else if (username == "North Central Service (NCS)")
        {
            trainLines = ["Union Station" , "Western Ave." , "River Grove" , "Belmont Ave. (Franklin Park)" , "Schiller Park" , "Rosemont" , "O’Hare Transfer" , "Prospect Heights" , "Wheeling" , "Buffalo Grove" , "Prairie View" , "Vernon Hills" , "Mundelein" , "Prairie Crossing" , "Washington St. (Grayslake)" , "Round Lake Beach" , "Lake Villa" , "Antioch"]
        }
        else if (username == "Union Pacific Northwest (UP-NW)")
        {
            trainLines = ["Ogilvie Transportation Center" , "Clybourn" , "Irving Park" , "Jefferson Park" , "Gladstone Park" , "Norwood Park" , "Edison Park" , "Park Ridge" , "Dee Road" , "Des Plaines" , "Cumberland" , "Mount Prospect" , "Arlington Heights" , "Arlington Park" , "Palatine" , "Barrington" , "Fox River Grove" , "Cary" , "Pingree Road" , "Crystal Lake" , "Woodstock" , "McHenry" , "Harvard"]
        }
        else if (username == "Milwaukee West")
        {
            trainLines = ["Union Station" , "Western Ave." , "Grand/Cicero" , "Hanson Park" , "Galewood" , "Mars" , "Mont Clare" , "Elmwood Park" , "River Grove" , "Franklin Park" , "Mannheim" , "Bensenville" , "Wood Dale" , "Itasca" , "Medinah" , "Roselle" , "Schaumburg" , "Hanover Park" , "Bartlett" , "National St." , "Elgin" , "Big Timber Rd."]
        }
        else if (username == "Union Pacific West (UP-W)")
        {
            trainLines = ["Ogilvie Transportation Center" , "Kedzie" , "Oak Park (Marion St.)" , "River Forest" , "Maywood" , "Melrose Park" , "Bellwood" , "Berkeley" , "Elmhurst" , "Villa Park" , "Lombard" , "Glen Ellyn" , "College Ave." , "Wheaton" , "Winfield" , "West Chicago" , "Geneva" , "La Fox" , "Elburn"]
        }
        else if (username == "BNSF Railway")
        {
            trainLines = []
        }
        else if (username == "Heritage Corridor")
        {
            trainLines = []
        }
        else if (username == "SouthWest Service")
        {
            trainLines = []
        }
        else if (username == "Rock Island District")
        {
            trainLines = []
        }
        else if (username == "Metra Electric District")
        {
            trainLines = []
        }
        
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
        if(pickerlabel.text != "--Select Destination--"){
            nextButton.isHidden = false
        }
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
