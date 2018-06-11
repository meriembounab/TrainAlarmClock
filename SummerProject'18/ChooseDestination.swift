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
            trainLines = ["--Select Destination--" , "Ogilvie Transportation Center" , "Clybourn" , "Ravenswood" , "Rogers Park" , "Main St., Evanston" , "Davis St., Evanston" , "Central St., Evanston" , "Wilmette" , "Kenilworth" , "Indian Hill" , "Winnetka" , "Hubbard Woods" , "Glencoe" , "Braeside" , "Ravinia Park" , "Ravinia" , "Highland Park" , "Highwood" , "Fort Sheridan" , "Lake Forest" , "Lake Bluff" , "Great Lakes" , "North Chicago" , "Waukegan" , "Zion" , "Winthrop Harbor" , "Kenosha, Wisconsin"]
        }
        else if (username == "Milwaukee District North (MD-N)")
        {
            trainLines = ["--Select Destination--" , "Union Station" , "Western Ave." , "Healy" , "Grayland" , "Mayfair" , "Forest Glen" , "Edgebrook" , "Morton Grove" , "Golf" , "Glenview" , "Glen/N. Glenview" , "Northbrook" , "Lake Cook Rd." , "Deerfield" , "Lake Forest" , "Liberty ville" , "Prairie Crossing" , "Grayslake" , "Round Lake" , "Long Lake" , "Ingleside" , "Fox Lake"]
        }
        else if (username == "North Central Service (NCS)")
        {
            trainLines = ["--Select Destination--" , "Union Station" , "Western Ave." , "River Grove" , "Belmont Ave. (Franklin Park)" , "Schiller Park" , "Rosemont" , "O’Hare Transfer" , "Prospect Heights" , "Wheeling" , "Buffalo Grove" , "Prairie View" , "Vernon Hills" , "Mundelein" , "Prairie Crossing" , "Washington St. (Grayslake)" , "Round Lake Beach" , "Lake Villa" , "Antioch"]
        }
        else if (username == "Union Pacific Northwest (UP-NW)")
        {
            trainLines = ["--Select Destination--" , "Ogilvie Transportation Center" , "Clybourn" , "Irving Park" , "Jefferson Park" , "Gladstone Park" , "Norwood Park" , "Edison Park" , "Park Ridge" , "Dee Road" , "Des Plaines" , "Cumberland" , "Mount Prospect" , "Arlington Heights" , "Arlington Park" , "Palatine" , "Barrington" , "Fox River Grove" , "Cary" , "Pingree Road" , "Crystal Lake" , "Woodstock" , "McHenry" , "Harvard"]
        }
        else if (username == "Milwaukee District West (MD-W)")
        {
            trainLines = ["--Select Destination--" , "Union Station" , "Western Ave." , "Grand/Cicero" , "Hanson Park" , "Galewood" , "Mars" , "Mont Clare" , "Elmwood Park" , "River Grove" , "Franklin Park" , "Mannheim" , "Bensenville" , "Wood Dale" , "Itasca" , "Medinah" , "Roselle" , "Schaumburg" , "Hanover Park" , "Bartlett" , "National St." , "Elgin" , "Big Timber Rd."]
        }
        else if (username == "Union Pacific West (UP-W)")
        {
            trainLines = ["--Select Destination--" , "Ogilvie Transportation Center" , "Kedzie" , "Oak Park (Marion St.)" , "River Forest" , "Maywood" , "Melrose Park" , "Bellwood" , "Berkeley" , "Elmhurst" , "Villa Park" , "Lombard" , "Glen Ellyn" , "College Ave." , "Wheaton" , "Winfield" , "West Chicago" , "Geneva" , "La Fox" , "Elburn"]
        }
        else if (username == "BNSF Railway (BNSF)")
        {
            trainLines = ["--Select Destination--" ,"Union Station" , "Halsted St." , "Western Ave." , "Cicero" , "LaVergne" , "Berwyn" , "Harlem Ave." , "Riverside" , "Hollywood (Zoo Stop)" , "Brookfield" , "Congress Park" , "LaGrange Rd." , "LaGrange, Stone Ave." , "Western Springs" , "Highlands" , "Hinsdale" , "West Hinsdale" , "Clarendon Hills" , "Westmont" , "Fairview Ave." , "Downers Grv., Main St." , "Belmont" , "Lisle" , "Naperville" , "Route 59" , "Aurora" ]
        }
        else if (username == "Heritage Corridor (HC)")
        {
            trainLines = ["--Select Destination--" , "Union Station" , "Summit" , "Willow Springs" , "Lemont" , "Romeoville" , "Lockport" , "Joliet"]
        }
        else if (username == "SouthWest Service (SWS)")
        {
            trainLines = ["--Select Destination--" , "Union Station" , "Wrightwood" , "Ashburn" , "Oak Lawn" , "Chicago Ridge" , "Worth" , "Palos Heights" , "Palos Park" , "143rd St. (Orland Park)" , "153rd St. (Orland Park)" , "179th St. (Orland Park)" , "Laraway Road" , "Manhattan" ]
        }
        else if (username == "Rock Island District (RI)")
        {
            trainLines = ["--Select Destination--" , "Chicago (LaSalle St.)" , "35th St./“Lou” Jones" , "Gresham" , "95th St. - Longwood" , "103rd St. - Washington Hts." , "Brainerd" , "91st St. - Beverly Hills" , "95th St. - Beverly Hills" , "99th St. - Beverly Hills" , "103rd St. - Beverly Hills" , "107th St. - Beverly Hills" , "111th St. - Morgan Park" , "115th St. - Morgan Park" , "119th St." , "123rd St." , "Prairie St." , "Blue Island - Vermont St." , "Robbins" , "Midlothian" , "Oak Forest" , "Tinley Park" , "Tinley Park - 80th Ave." , "Mokena - Hickory Creek" , "Mokena - Front St." , "New Lenox" , "Joliet"]
        }
        else if (username == "Metra Electric District (ME)")
        {
            trainLines = ["--Select Destination--" , "MILLENNIUM STATION" , "Van Buren St." , "Museum Campus / 11th St." , "18th St." , "McCormick Place" , "27th St." , "47th St. (Kenwood)" , "51st / 53rd St. (Hyde Park)" , "55th - 56th - 57th St." , "59th St. (Univ. of Chicago)" , "63rd St." , "75th St. (Grand Crossing)" , "79th St. (Chatham)" , "83rd St. (Avalon Park)" , "87th St. (Woodruff)" , "91st St. (Chesterfield)" , "95th St. (Chicago St. Univ.)" , "103rd St. (Rosemoor)" , "107th St." , "111th St. (Pullman)" , "Kensington (115th St.)" , "Riverdale" , "Ivanhoe" , "147th St. (Sibley Blvd.)" , "Harvey" , "Hazel Crest" , "Calumet" , "Homewood" , "Flossmoor" , "Olympia Fields" , "211th St. (Lincoln Hwy.)" , "Matteson" , "Richton Park" , "UNIVERSITY PARK" , "Stony Island" , "Bryn Mawr" , "South Shore" , "Windsor Park" , "Cheltenham (79th St.)" , "83rd St." , "87th St." , "SOUTH CHICAGO (93rd St.)" , "State St." , "Stewart Ridge" , "West Pullman" , "Racine Ave." , "Ashland Ave." , "Burr Oak" , "Blue Island"]
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
        else{
            nextButton.isHidden = true
        }
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
