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
                println("\(userName.text)")
                if userName.text != "" && password.text != ""
                {
                    var viewController :LoggedInViewController = self.storyboard.instantiateViewControllerWithIdentifier("LoggedInViewController") as   LoggedInViewController
                    viewController.passedUsername = self.userName.text
                    self.navigationController.pushViewController(viewController, animated: true)
                }
                else
                {
                    var registerViewController :RegisterViewController = self.storyboard.instantiateViewControllerWithIdentifier("RegisterViewController") as   RegisterViewController
                    self.navigationController.pushViewController(registerViewController, animated: true)
                }
            case self.cancelButton:
                userName.resignFirstResponder();
                password.resignFirstResponder();
            
            default:
                println("invalid button clicked")
            
        }

    }


}

