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
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
