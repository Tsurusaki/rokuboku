//
//  ViewController.swift
//  new app
//
//  Created by 鶴崎かんな on 2015/03/07.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var ope = 1
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
        //ボタンを押すのが６回以下ならこのアクションをします
        if(ope <= 6){
            
        shinrai = shinrai + 3
        shinraiLabel.text = "\(shinrai)"
        power = power - 3
        powerLabel.text = "\(power)"
        syusai = syusai + 5
        syusaiLabel.text = "\(syusai)"
        year = year + 2
        yearLabel.text = "\(year)"
        ope = ope + 1
            }
        //ボタンを６回以上おす且つ
        else if (){
            
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("next")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
            
        }
        
    }
    
    @IBAction func book(){
        shinrai = shinrai + 2
        shinraiLabel.text = "\(shinrai)"
        power = power - 2
        powerLabel.text = "\(power)"
        syusai = syusai + 3
        syusaiLabel.text = "\(syusai)"
        year = year + 2
        yearLabel.text = "\(year)"
    }
    
    @IBAction func soccer(){
        sports = sports + 5
        sportsLabel.text = "\(sports)"
        power = power - 5
        powerLabel.text = "\(power)"
        year = year + 2
        yearLabel.text = "\(year)"
    }
    
    @IBAction func food(){
        power = power + 10
        powerLabel.text = "\(power)"
        year = year + 2
        yearLabel.text = "\(year)"
    }
    
    @IBAction func help(){
        shinrai = shinrai + 5
        shinraiLabel.text = "\(shinrai)"
        power = power - 5
        powerLabel.text = "\(power)"
        year = year + 2
        yearLabel.text = "\(year)"
    }
    
    @IBAction func fight(){
        power = power - 10
        powerLabel.text = "\(power)"
        sports = sports + 10
        sportsLabel.text = "\(sports)"
        year = year + 2
        yearLabel.text = "\(year)"
    }
    
    @IBAction func kataduke(){
        shinrai = shinrai + 5
        shinraiLabel.text = "\(shinrai)"
        power = power - 5
        powerLabel.text = "\(power)"
        year = year + 2
        yearLabel.text = "\(year)"
    }
    
    @IBAction func game(){
        shinrai = shinrai - 3
        shinraiLabel.text = "\(shinrai)"
        power = power + 10
        powerLabel.text = "\(power)"
        syusai = syusai - 3
        syusaiLabel.text = "\(syusai)"
        year = year + 2
        yearLabel.text = "\(year)"
        
        
    }
    
    @IBAction func brake(){
        power = power + 20
        powerLabel.text = "\(power)"
        sports = sports - 10
        sportsLabel.text = "\(sports)"
        year = year + 1
        yearLabel.text = "\(year)"
       // self.cal()
    }
    
//    func cal {
//        if (year >= 18 & shinrai <= -20 &){
//            
//        }
    
        
//    }
    
}



