//
//  ViewController.swift
//  jisuanqi
//
//  Created by 20161104612 on 2018/9/26.
//  Copyright © 2018年 20161104612. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var test: UITextField!
    var userIsInTheMiddleOfTypingANumber:Bool = false
    
    var qianyige:Double = 0
    var houyige:Double = 0
    var jieguo:Double = 0
    
    var point:Double = 0.0
    
    var fuhao:String?
    
    @IBAction func sz(_ sender: AnyObject) {
        if (point == 0.0) {
            switch sender.currentTitle! {
            case "1"?:
                houyige = 1 + houyige * 10
            case "2"?:
                houyige = 2 + houyige * 10
            case "3"?:
                houyige = 3 + houyige * 10
            case "4"?:
                houyige = 4 + houyige * 10
            case "5"?:
                houyige = 5 + houyige * 10
            case "6"?:
                houyige = 6 + houyige * 10
            case "7"?:
                houyige = 7 + houyige * 10
            case "8"?:
                houyige = 8 + houyige * 10
            case "9"?:
                houyige = 9 + houyige * 10
            case "0"?:
                houyige = houyige * 10
            default:
                print("shuzi")
            }
        } else if (point != 0.0) {
            switch sender.currentTitle! {
            case "1"?:
                houyige = (point * 1) + houyige
            case "2"?:
                houyige = (point * 2) + houyige
            case "3"?:
                houyige = (point * 3) + houyige
            case "4"?:
                houyige = (point * 4) + houyige
            case "5"?:
                houyige = (point * 5) + houyige
            case "6"?:
                houyige = (point * 6) + houyige
            case "7"?:
                houyige = (point * 6) + houyige
            case "8"?:
                houyige = (point * 6) + houyige
            case "9"?:
                houyige = (point * 6) + houyige
            case "0"?:
                point = point * 0.1
            default:
                print("shuzi")
            }
            point = point * 0.1
        }
        
        test.text = String(houyige)
    }
    
    @IBAction func ac(_ sender: Any) {
        test.text = "0"
    }
    
    
    @IBAction func add(_ sender: AnyObject) {
        if houyige != 0 {
            qianyige = houyige
            houyige = 0
        }
        test.text = "+"
        point = 0.0
        fuhao = sender.currentTitle
    }
    
    @IBAction func minus(_ sender: AnyObject) {
        if houyige != 0 {
            qianyige = houyige
            houyige = 0
        }
        test.text = "-"
        point = 0.0
        fuhao = sender.currentTitle
    }
    
    @IBAction func multiply(_ sender: AnyObject) {
        if houyige != 0 {
            qianyige = houyige
            houyige = 0
        }
        test.text = "x"
        point = 0.0
        fuhao = sender.currentTitle
    }
    
    @IBAction func divide(_ sender: AnyObject) {
        if houyige != 0 {
            qianyige = houyige
            houyige = 0
        }
        test.text = "/"
        point = 0.0
        fuhao = sender.currentTitle
    }
    
    @IBAction func output(_ sender: Any) {
        if (qianyige != 0) && (houyige != 0) && (fuhao != "") {
            switch fuhao! {
            case "+":
                test.text = "+"
                jieguo = qianyige + houyige
            case "-":
                jieguo = qianyige - houyige
            case "x":
                jieguo = qianyige * houyige
            case "/":
                jieguo = qianyige / houyige
            default:
                print("output")
            }
            test.text = String(jieguo)
            
            fuhao = ""
            houyige = 0
            qianyige = jieguo
            point = 0.0
        }
    }
    
    @IBAction func point(_ sender: Any) {
        if point == 0 {
            point = 0.1
        }
    }
    
    @IBAction func returnminus(_ sender: Any) {
        test.text?.removeLast()
    }
    
    
    @IBAction func or(_ sender: Any) {
            if point == 0.0 {
                test.text = "-" + test.text!
                point = 1.0
            }
            else {
                test.text?.removeFirst()
                point = 0.0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        test.text = "0"
    }
}

