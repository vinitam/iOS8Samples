//
//  RegisterViewController.swift
//  iOS8SampleCode
//
//  Copyright (c) 2014 Tanmay. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet var registerLabel : UILabel

    override func viewDidLoad() {
        registerLabel.text = "You haven't entered credentials."
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
