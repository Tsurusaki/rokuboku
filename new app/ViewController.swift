//
//  ViewController.swift
//  new app
//
//  Created by 鶴崎かんな on 2015/03/07.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//
import UIKit
import AVFoundation


class ViewController: UIViewController,AVAudioPlayerDelegate {
    
    
    //タイマー
    var timer: NSTimer!
    var cnt: Float = 0
    
    
    
    
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
    
    var audioPlayer: AVAudioPlayer!
    
    
    
    @IBOutlet weak var boy: UIImageView!
    
    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //@IBAction func timerBtn(sender: UIButton) {
        
        //タイマーを作る.
       /* timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "onUpdate:", userInfo: nil, repeats: true)
        
    }*/
    
    /*func onUpdate(timer : NSTimer){
        cnt += 0.1
        if cnt > 5.0 {
            if timer.valid  {
                //timerを停止する.
                timer.invalidate()
            }
        }
    }*/
    
    @IBAction func bt1(){
        // アニメーションの時間を2秒に設定.
        
        UIView.animateWithDuration(2.0,
            // 遅延時間.
            delay: 0.0,
            // バネの弾性力. 小さいほど弾性力は大きくなる.
            usingSpringWithDamping: 0.4,
            // 初速度.
            initialSpringVelocity: 15,
            // 一定の速度.
            options: UIViewAnimationOptions.CurveLinear,
            animations: { () -> Void in
                self.boy.layer.position = CGPointMake(160,100
                )
                // アニメーション完了時の処理
            }) { (Bool) -> Void in
                self.boy.center = self.view.center
        }
    }
    @IBAction func book(){
        if ope <= 6 {
            syusai = syusai + 10
            syusaiLabel.text = "\(syusai)"
            sports = sports - 10
            sportsLabel.text = "\(sports)"
            year = year + 2
            yearLabel.text = "\(year)"
            ope = ope + 1
            //効果音をつける
            let sound_data = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("本", ofType: "mp3")!)
            
            audioPlayer = AVAudioPlayer(contentsOfURL:sound_data, error: nil)
            audioPlayer.delegate = self
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        if ope > 6{
            result()
        }
    }
    
    @IBAction func stady(){
        //ボタンを押すのが６回以下ならこのアクションをします
        if ope <= 6 {
        
        shinrai = shinrai + 10
        shinraiLabel.text = "\(shinrai)"
        power = power - 5
        powerLabel.text = "\(power)"
        syusai = syusai + 20
        syusaiLabel.text = "\(syusai)"
        year = year + 2
        yearLabel.text = "\(year)"
        ope = ope + 1
       
        //効果音をつける
        let sound_data = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("勉強", ofType: "mp3")!)
            
            audioPlayer = AVAudioPlayer(contentsOfURL:sound_data, error: nil)
            audioPlayer.delegate = self 
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            }
        if ope > 6{
            result()
        }
        

        }
    
    @IBAction func soccer(){
        if ope <= 6 {
            
        sports = sports + 15
        sportsLabel.text = "\(sports)"
        power = power - 5
        powerLabel.text = "\(power)"
        year = year + 2
        yearLabel.text = "\(year)"
        ope = ope + 1
            //効果音をつける
            let sound_data = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("サッカー", ofType: "mp3")!)
            
            audioPlayer = AVAudioPlayer(contentsOfURL:sound_data, error: nil)
            audioPlayer.delegate = self
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        if ope > 6{
            result()
        }
            }
    
    @IBAction func food(){
        if ope <= 6 {
        power = power + 35
        powerLabel.text = "\(power)"
        year = year + 2
        yearLabel.text = "\(year)"
        ope = ope + 1
            //効果音をつける
            let sound_data = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("お菓子", ofType: "mp3")!)
            
            audioPlayer = AVAudioPlayer(contentsOfURL:sound_data, error: nil)
            audioPlayer.delegate = self
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        if ope > 6{
            result()
        }
    }
    
    @IBAction func help(){
        if ope <= 6 {
        shinrai = shinrai + 10
        shinraiLabel.text = "\(shinrai)"
        year = year + 2
        yearLabel.text = "\(year)"
        ope = ope + 1
            //効果音をつける
            let sound_data = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("お手伝い", ofType: "mp3")!)
            
            audioPlayer = AVAudioPlayer(contentsOfURL:sound_data, error: nil)
            audioPlayer.delegate = self
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        if ope > 6{
            result()
        }
    }
    
    @IBAction func fight(){
        if ope <= 6 {
        power = power - 15
        powerLabel.text = "\(power)"
        shinrai = shinrai - 15
        shinraiLabel.text = "\(shinrai)"
        year = year + 2
        yearLabel.text = "\(year)"
        ope = ope + 1
            //効果音をつける
            let sound_data = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("喧嘩", ofType: "mp3")!)
            
            audioPlayer = AVAudioPlayer(contentsOfURL:sound_data, error: nil)
            audioPlayer.delegate = self
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        if ope > 6{
            result()
        }

                }
    
    @IBAction func kataduke(){
        if ope <= 6 {
        shinrai = shinrai + 20
        shinraiLabel.text = "\(shinrai)"
        power = power - 5
        powerLabel.text = "\(power)"
        year = year + 2
        yearLabel.text = "\(year)"
        ope = ope + 1
            //効果音をつける
            let sound_data = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("片付け", ofType: "mp3")!)
            
            audioPlayer = AVAudioPlayer(contentsOfURL:sound_data, error: nil)
            audioPlayer.delegate = self
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        if ope > 6{
            result()
        }
    }
    
    @IBAction func game(){
        if ope <= 6 {
        power = power + 30
        powerLabel.text = "\(power)"
        sports = sports - 10
        sportsLabel.text = "\(sports)"
        year = year + 2
        yearLabel.text = "\(year)"
        ope = ope + 1
            //効果音をつける
            let sound_data = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ゲーム", ofType: "mp3")!)
            
            audioPlayer = AVAudioPlayer(contentsOfURL:sound_data, error: nil)
            audioPlayer.delegate = self
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        if ope > 6{
            result()
        }
        
        
    }
    
    @IBAction func brake(){
        if ope <= 6 {
        power = power + 20
        powerLabel.text = "\(power)"
        year = year + 1
        yearLabel.text = "\(year)"
        ope = ope + 1
            //効果音をつける
            let sound_data = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ごろごろ", ofType: "mp3")!)
            
            audioPlayer = AVAudioPlayer(contentsOfURL:sound_data, error: nil)
            audioPlayer.delegate = self
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        if ope > 6{
            result()
        }
    }
    
    
   @IBAction func modorubt(){
        var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("main")
        self.presentViewController(nex as UIViewController, animated: true, completion: nil)

    }
    
   @IBAction func result(){
    
    
    /*体力が30以上、スポーツ30以上、信頼30以上,
    秀才３０以上(イケメン)*/
    if ope > 6 && power >= 30 && sports >= 30 && shinrai >= 30 && shinrai >= 30 {
        audioPlayer.stop()
        
        var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("niceGuy")
        self.presentViewController(nex as UIViewController, animated: true, completion: nil)
    }
        
        //体力が30以上、スポーツ60以上（オリンピック選手）
    else if ope > 6 && power >= 30 {
        audioPlayer.stop()
        
        var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("sportsman")
        self.presentViewController(nex as UIViewController, animated: true, completion: nil)
    }
        
        //秀才が60以上（天才）
    else if ope > 6 && syusai >= 60 {
        audioPlayer.stop()
        
        var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("tensai")
        self.presentViewController(nex as UIViewController, animated: true, completion: nil)
    }
        
        
        
        //ボタンを６回より押す且つ信頼が-30以下（グレる）
    else if ope > 6 && shinrai <= 30 {
        audioPlayer.stop()
        
        var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("gureru")
        self.presentViewController(nex as UIViewController, animated: true, completion: nil)
    }
        
        
        //体力が-50以下
    else if ope > 6 && power <= -20 {
        audioPlayer.stop()
        
        var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("byouki")
        self.presentViewController(nex as UIViewController, animated: true, completion: nil)
    }
        //それ以外（自分探し放浪）
    else {
        audioPlayer.stop()
        
        var nex : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("tabi")
        self.presentViewController(nex as UIViewController, animated: true, completion: nil)
    }

    
    
    
    }
    
//    func cal {
//        if (year >= 18 & shinrai <= -20 &){
//
//        }
    
        
//    }
    
}



