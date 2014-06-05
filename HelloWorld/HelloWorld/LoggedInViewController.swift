//
//  LoggedInViewController.swift
//  iOS8SampleCode
//
//  Copyright (c) 2014 Tanmay. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController {
    //setting the ! as the value of string is nil at first
    var passedUsername : String!
    
    @IBOutlet var welcomeLabel : UILabel

    override func viewDidLoad() {
        welcomeLabel.text = "\(passedUsername), Welcome to your first tutorial";
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
