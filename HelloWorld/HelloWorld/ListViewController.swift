//
//  ListViewController.swift
//  iOS8SampleCode
//
//  Copyright (c) 2014 Vinita. All rights reserved.
//

import UIKit

class ListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var tableView : UITableView

    var listItems = ["Text Field","Table View","Label"]
    
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
            var textViewController :ViewController = self.storyboard.instantiateViewControllerWithIdentifier("ViewController") as ViewController
            self.navigationController.pushViewController(textViewController, animated: true)
        }
        else if indexPath.row == 1
        {
            var tableViewListingController :TableViewListingController = self.storyboard.instantiateViewControllerWithIdentifier("TableViewListingController") as TableViewListingController
            self.navigationController.pushViewController(tableViewListingController, animated: true)
        }
    }
    


}
