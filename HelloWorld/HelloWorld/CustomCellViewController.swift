//
//  CustomCellViewController.swift
//  iOS8SampleCode
//
//  Copyright (c) 2014 Tanmay. All rights reserved.
//

import UIKit

class CustomCellViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return 3
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        var cell:CustomTableViewCell = tableView.dequeueReusableCellWithIdentifier("customCell")
            as CustomTableViewCell
        cell.cellImage.image = UIImage(named: "cell.png")
        cell.rowLabel.text = "Row Number: \(indexPath.row)"
        //cell.textLabel.text = "Section: \(indexPath.section) Row: \(indexPath.row)"
        

        return cell
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
