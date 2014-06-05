//
//  LabelViewController.swift
//  iOS8SampleCode
//
//  Copyright (c) 2014 Vinita. All rights reserved.
//

import UIKit

class LabelViewController: UIViewController {

    @IBOutlet var simpleLabel : UILabel
    
    @IBOutlet var attributedLabel : UILabel


    override func viewDidLoad() {
        
        simpleLabel.text = "This is a simple label"
        
        var dictionary : NSDictionary = [
            UIFont() : UIFont.systemFontOfSize(12) ,
            NSForegroundColorAttributeName : UIColor.grayColor(),
            NSBackgroundColorAttributeName : UIColor.redColor()
        ]
        var attributedString : NSAttributedString = NSAttributedString(string: "This is a attributed string", attributes: dictionary)
        attributedLabel.attributedText = attributedString
        
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
