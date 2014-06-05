//
//  TextFieldViewController.swift
//  iOS8SampleCode
//
//  Copyright (c) 2014 Vinita. All rights reserved.
//

import UIKit

class TextFieldViewController: UIViewController,UIGestureRecognizerDelegate {

    @IBOutlet var simpleTextField : UITextField

    @IBOutlet var secureTextField : UITextField

    @IBOutlet var keyboardTextField : UITextField

    override func viewDidLoad() {
        
        var tapGesture : UIGestureRecognizer = UIGestureRecognizer(target: self, action: "")
        tapGesture.delegate = self
        view.addGestureRecognizer(tapGesture)

        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!)
    {
        var touch : UITouch = touches.allObjects[0] as UITouch
        var location: CGPoint = touch.locationInView(view)

        if touch.view == view
        {
            view.frame = CGRectMake(0, 0, view.frame.size.width, view.frame.size.height)
            simpleTextField.resignFirstResponder()
            secureTextField.resignFirstResponder()
            keyboardTextField.resignFirstResponder()
            
        }
    }
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer!, shouldReceiveTouch touch: UITouch!) -> Bool
    {

        return true
    }

}
