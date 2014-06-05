//
//  ViewController.swift
//  iOS8SampleCode
//
//  Copyright (c) 2014 Vinita. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet var userName : UITextField
    
    @IBOutlet var password : UITextField
    
    @IBOutlet var loginbutton : UIButton
    
    @IBOutlet var cancelButton : UIButton
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonLoginClicked(sender : UIButton) {
        
        switch sender
        {
            case self.loginbutton:
                if self.userName.text != " " && self.password.text != " "
                {
                    println("valid credentials")
                }
                else
                {
                    println("invalid credentials")
                }
            case self.cancelButton:
                println("Cancel button clicked")
            default:
                println("invalid button clicked")
            
        }

    }


}

