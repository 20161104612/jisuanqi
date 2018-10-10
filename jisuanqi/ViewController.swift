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
    var userIsTheMiddleOfTypingANumber = false
    
    @IBAction func app(_ sender: AnyObject) {
        let digit = sender.currentTitle!!
        if userIsTheMiddleOfTypingANumber
        {
            test.text = test.text! + digit
        }
        else
        {
            test.text = digit
            userIsTheMiddleOfTypingANumber = true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

