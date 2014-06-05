//
//  ViewController.swift
//  iOS8SampleCode
//
//  Copyright (c) 2014 Vinita. All rights reserved.
//

import UIKit



class ViewController: UIViewController,UIGestureRecognizerDelegate {
    
    @IBOutlet var userName : UITextField
    
    @IBOutlet var password : UITextField
    
    @IBOutlet var loginbutton : UIButton
    
    @IBOutlet var cancelButton : UIButton
    
    override func viewDidLoad() {
        
        var tapGesture : UIGestureRecognizer = UIGestureRecognizer(target: self, action: "")
        tapGesture.delegate = self
        view.addGestureRecognizer(tapGesture)
        
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
                if userName.text != "" && password.text != ""
                {
                    var viewController :LoggedInViewController = self.storyboard.instantiateViewControllerWithIdentifier("LoggedInViewController") as   LoggedInViewController
                    viewController.passedUsername = self.userName.text
                    self.navigationController.pushViewController(viewController, animated: true)
                }
                else if userName.text == "" && password.text == ""
                {
                    let alertController = UIAlertController(title: "Error"   , message: "Incomplete fields", preferredStyle: .Alert)
                    
                    let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { action in
                    }
                    alertController.addAction(cancelAction)
                    presentViewController(alertController, animated: true, completion: nil)
                }

            case self.cancelButton:
                userName.resignFirstResponder();
                password.resignFirstResponder();
            
            default:
                println("invalid button clicked")
            
        }

    }

    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!)
    {
        var touch : UITouch = touches.allObjects[0] as UITouch
        var location: CGPoint = touch.locationInView(view)
        
        if touch.view == view
        {
            view.frame = CGRectMake(0, 0, view.frame.size.width, view.frame.size.height)
            userName.resignFirstResponder()
            password.resignFirstResponder()
            
        }
    }

}

