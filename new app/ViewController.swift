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
        if ope <= 6 {
            
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
        //ボタンを６回以上おす且つ信頼が-20以下（グレる）
        else if shinrai <= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("gureru")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
        
        //秀才が20以上（天才）
        else if syusai >= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("tensai")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
        
        //体力が15以上、スポーツ15以上、信頼10以上(イケメン)
        else if power >= 15 & sports >= 15 & shinrai >= 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("niceGuy")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
            }
        
        //体力が20以上、スポーツ20以上（オリンピック選手）
        else if power >= 20 & sports >= 20 & shinrai < 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("sportsman")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
            }
        
        //体力が-20以下
        else if power <= -20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("byouki")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
            }

        }
    
    
    
    @IBAction func book(){
        if ope <= 6 {
        shinrai = shinrai + 2
        shinraiLabel.text = "\(shinrai)"
        power = power - 2
        powerLabel.text = "\(power)"
        syusai = syusai + 3
        syusaiLabel.text = "\(syusai)"
        year = year + 2
        yearLabel.text = "\(year)"
        ope = ope + 1
            }
            //ボタンを６回以上おす且つ信頼が-20以下（グレる）
        else if shinrai <= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("gureru")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //秀才が20以上（天才）
        else if syusai >= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("tensai")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が15以上、スポーツ15以上、信頼10以上(イケメン)
        else if power >= 15 & sports >= 15 & shinrai >= 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("niceGuy")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が20以上、スポーツ20以上（オリンピック選手）
        else if power >= 20 & sports >= 20 & shinrai < 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("sportsman")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が-20以下
        else if power <= -20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("byouki")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
    }
        
        
    
    @IBAction func soccer(){
        if ope <= 6 {
            
        sports = sports + 5
        sportsLabel.text = "\(sports)"
        power = power - 5
        powerLabel.text = "\(power)"
        year = year + 2
        yearLabel.text = "\(year)"
        ope = ope + 1
        }
        
            //ボタンを６回以上おす且つ信頼が-20以下（グレる）
        else if shinrai <= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("gureru")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //秀才が20以上（天才）
        else if syusai >= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("tensai")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が15以上、スポーツ15以上、信頼10以上(イケメン)
        else if power >= 15 & sports >= 15 & shinrai >= 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("niceGuy")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が20以上、スポーツ20以上（オリンピック選手）
        else if power >= 20 & sports >= 20 & shinrai < 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("sportsman")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が-20以下
        else if power <= -20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("byouki")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
    }
    
    @IBAction func food(){
        if ope <= 6 {
        power = power + 10
        powerLabel.text = "\(power)"
        year = year + 2
        yearLabel.text = "\(year)"
        ope = ope + 1
            }
            //ボタンを６回以上おす且つ信頼が-20以下（グレる）
        else if shinrai <= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("gureru")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //秀才が20以上（天才）
        else if syusai >= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("tensai")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が15以上、スポーツ15以上、信頼10以上(イケメン)
        else if power >= 15 & sports >= 15 & shinrai >= 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("niceGuy")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が20以上、スポーツ20以上（オリンピック選手）
        else if power >= 20 & sports >= 20 & shinrai < 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("sportsman")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が-20以下
        else if power <= -20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("byouki")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
    }
    
    @IBAction func help(){
        if ope <= 6 {
        shinrai = shinrai + 5
        shinraiLabel.text = "\(shinrai)"
        power = power - 5
        powerLabel.text = "\(power)"
        year = year + 2
        yearLabel.text = "\(year)"
        ope = ope + 1
        }
            //ボタンを６回以上おす且つ信頼が-20以下（グレる）
        else if shinrai <= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("gureru")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //秀才が20以上（天才）
        else if syusai >= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("tensai")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が15以上、スポーツ15以上、信頼10以上(イケメン)
        else if power >= 15 & sports >= 15 & shinrai >= 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("niceGuy")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が20以上、スポーツ20以上（オリンピック選手）
        else if power >= 20 & sports >= 20 & shinrai < 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("sportsman")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が-20以下
        else if power <= -20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("byouki")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
    }
    
    @IBAction func fight(){
        if ope <= 6 {
        power = power - 10
        powerLabel.text = "\(power)"
        sports = sports + 10
        sportsLabel.text = "\(sports)"
        year = year + 2
        yearLabel.text = "\(year)"
        ope = ope + 1
            }
            //ボタンを６回以上おす且つ信頼が-20以下（グレる）
        else if shinrai <= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("gureru")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //秀才が20以上（天才）
        else if syusai >= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("tensai")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が15以上、スポーツ15以上、信頼10以上(イケメン)
        else if power >= 15 & sports >= 15 & shinrai >= 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("niceGuy")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が20以上、スポーツ20以上（オリンピック選手）
        else if power >= 20 & sports >= 20 & shinrai < 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("sportsman")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が-20以下
        else if power <= -20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("byouki")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
    }
    
    @IBAction func kataduke(){
        if ope <= 6 {
        shinrai = shinrai + 5
        shinraiLabel.text = "\(shinrai)"
        power = power - 5
        powerLabel.text = "\(power)"
        year = year + 2
        yearLabel.text = "\(year)"
        ope = ope + 1
        }
            //ボタンを６回以上おす且つ信頼が-20以下（グレる）
        else if shinrai <= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("gureru")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //秀才が20以上（天才）
        else if syusai >= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("tensai")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が15以上、スポーツ15以上、信頼10以上(イケメン)
        else if power >= 15 & sports >= 15 & shinrai >= 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("niceGuy")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が20以上、スポーツ20以上（オリンピック選手）
        else if power >= 20 & sports >= 20 & shinrai < 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("sportsman")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が-20以下
        else if power <= -20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("byouki")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
    }
    
    @IBAction func game(){
        if ope <= 6 {
        shinrai = shinrai - 3
        shinraiLabel.text = "\(shinrai)"
        power = power + 10
        powerLabel.text = "\(power)"
        syusai = syusai - 3
        syusaiLabel.text = "\(syusai)"
        year = year + 2
        yearLabel.text = "\(year)"
        ope = ope + 1
            }
            //ボタンを６回以上おす且つ信頼が-20以下（グレる）
        else if shinrai <= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("gureru")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //秀才が20以上（天才）
        else if syusai >= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("tensai")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が15以上、スポーツ15以上、信頼10以上(イケメン)
        else if power >= 15 & sports >= 15 & shinrai >= 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("niceGuy")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が20以上、スポーツ20以上（オリンピック選手）
        else if power >= 20 & sports >= 20 & shinrai < 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("sportsman")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が-20以下
        else if power <= -20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("byouki")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
    }
    
    @IBAction func brake(){
        if ope <= 6 {
        power = power + 20
        powerLabel.text = "\(power)"
        sports = sports - 10
        sportsLabel.text = "\(sports)"
        year = year + 1
        yearLabel.text = "\(year)"
        ope = ope + 1
        }
            //ボタンを６回以上おす且つ信頼が-20以下（グレる）
        else if shinrai <= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("gureru")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //秀才が20以上（天才）
        else if syusai >= 20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("tensai")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が15以上、スポーツ15以上、信頼10以上(イケメン)
        else if power >= 15 & sports >= 15 & shinrai >= 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("niceGuy")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が20以上、スポーツ20以上（オリンピック選手）
        else if power >= 20 & sports >= 20 & shinrai < 10 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("sportsman")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
            
            //体力が-20以下
        else if power <= -20 {
            var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("byouki")
            self.presentViewController(nex as UIViewController, animated: true, completion: nil)
        }
       // self.cal()
    }
    
//    func cal {
//        if (year >= 18 & shinrai <= -20 &){
//            
//        }
    
        
//    }
    
}



