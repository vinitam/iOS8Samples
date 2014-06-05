//
//  TableViewListingController.swift
//  iOS8SampleCode
//
//  Copyright (c) 2014 Vinita. All rights reserved.
//

import UIKit

class TableViewListingController: UIViewController {
    
    @IBOutlet var tableView : UITableView
    
    var listItems = ["Grouped Table View","Simple Table View","Table View with Custom Cell"]


    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "tableCell")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return listItems.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        var cell = tableView.dequeueReusableCellWithIdentifier("tableCell")
            as UITableViewCell
        cell.textLabel.text = listItems[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!)
    {
        if indexPath.row == 0
        {
            var groupedTableViewController :GroupedTableViewController = self.storyboard.instantiateViewControllerWithIdentifier("GroupedTableViewController") as   GroupedTableViewController
            self.navigationController.pushViewController(groupedTableViewController, animated: true)
        }
        else if indexPath.row == 1
        {
            var simpleTableViewController :SimpleTableViewController = self.storyboard.instantiateViewControllerWithIdentifier("SimpleTableViewController") as   SimpleTableViewController
            self.navigationController.pushViewController(simpleTableViewController, animated: true)
        }
    }



}
