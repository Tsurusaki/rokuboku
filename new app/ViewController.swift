//
//  ViewController.swift
//  new app
//
//  Created by 鶴崎かんな on 2015/03/07.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var shinraiLabel:UILabel!
     var shinrai:Int = 10
    
    @IBOutlet var powerLabel:UILabel!
     var power:Int = 10
    
    @IBOutlet var syusaiLabel:UILabel!
     var syusai:Int = 10
    
    @IBOutlet var sportsLabel:UILabel!
     var sports:Int = 10

    @IBOutlet var yearLabel:UILabel!
     var year:Int = 6

        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func stady(){
    shinrai = shinrai + 3
    shinraiLabel.text = "\(shinrai)"
    power = power - 3
    powerLabel.text = "\(power)"
    syusai = syusai + 5
    syusaiLabel.text = "\(syusai)"
    }
    
    @IBAction func book(){
    shinrai = shinrai + 2
    shinraiLabel.text = "\(shinrai)"
    power = power - 2
    powerLabel.text = "\(power)"
    syusai = syusai + 3
    syusaiLabel.text = "\(syusai)"
    }
    
    @IBAction func soccer(){
    sports = sports + 5
    sportsLabel.text = "\(sports)"
    power = power - 5
    powerLabel.text = "\(power)"
    }
    
    @IBAction func food(){
    power = power + 10
    powerLabel.text = "\(power)"
    year = year + 1
    yearLabel.text = "\(year)"
    }
    
    @IBAction func help(){
    shinrai = shinrai + 5
    shinraiLabel.text = "\(shinrai)"
    power = power - 5
    powerLabel.text = "\(power)"
    }
    
    @IBAction func fight(){
    power = power - 10
    powerLabel.text = "\(power)"
    sports = sports + 10
    sportsLabel.text = "\(sports)"
    }
    
    @IBAction func kataduke(){
    shinrai = shinrai + 5
    shinraiLabel.text = "\(shinrai)"
    power = power - 5
    powerLabel.text = "\(power)"
    }
    
    @IBAction func game(){
    shinrai = shinrai - 3
    shinraiLabel.text = "\(shinrai)"
    power = power + 10
    powerLabel.text = "\(power)"
    syusai = syusai - 3
    syusaiLabel.text = "\(syusai)"
    }
        
    @IBAction func brake(){
    power = power + 20
    powerLabel.text = "\(power)"
    sports = sports - 10
    sportsLabel.text = "\(sports)"
    year = year + 1
    yearLabel.text = "\(year)"
    }



    }
    


