//
//  WebServiceViewController.swift
//  iOS8SampleCode
//
//  Copyright (c) 2014 Vinita. All rights reserved.
//

import UIKit

class WebServiceViewController: UIViewController,NSURLSessionDelegate {

    var session : NSURLSession!
    
    var listItems : NSMutableArray!

    @IBOutlet var tableView : UITableView

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "tableCell")

        var url : NSURL = NSURL.URLWithString("http://www.json-generator.com/api/json/get/cbgOWpEHIi?indent=2")
        var request: NSURLRequest = NSURLRequest(URL:url)
        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session = NSURLSession(configuration: config)
        
        let task : NSURLSessionDataTask = session.dataTaskWithRequest(request, completionHandler: {(data, response, error) in
            
            var newdata : NSDictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as NSDictionary
            
            self.listItems =  newdata.valueForKey("fruits") as NSMutableArray
            
            self.tableView.reloadData()
        
            
            });
        
        
        task.resume()
        
        
        // Do any additional setup after loading the view.
    }

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        if self.listItems != nil
        {
            return self.listItems.count
        }
        else
        {
            return 0
        }
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        var cell = tableView.dequeueReusableCellWithIdentifier("tableCell")
            as UITableViewCell
        var fruitDictionary : NSDictionary = self.listItems[indexPath.row] as NSDictionary
        cell.textLabel.text = fruitDictionary.valueForKey("name") as? NSString
        return cell
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
