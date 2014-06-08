//
//  XMLParsingViewController.swift
//  iOS8SampleCode
//
//  Copyright (c) 2014 Vinita. All rights reserved.
//

import UIKit

class XMLParsingViewController: UIViewController,NSXMLParserDelegate {
    var parser : NSXMLParser!
    var elementName: NSString!
    
    var feedsArray :NSMutableArray = []

    
    @IBOutlet var tableView : UITableView

    
    var titleName = NSMutableString()
    var link = NSMutableString()
    var element = NSMutableString()
    
    override func viewDidLoad() {

        var url : NSURL = NSURL.URLWithString("http://images.apple.com/main/rss/hotnews/hotnews.rss")
        self.parser = NSXMLParser(contentsOfURL: url)
        self.parser.delegate = self
        self.parser.parse()
        
        super.viewDidLoad()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "tableCell")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func parser(parser: NSXMLParser!, didStartElement elementName: String!, namespaceURI: String!, qualifiedName qName: String!, attributes attributeDict: NSDictionary!)
    {
        self.elementName = elementName;
        
        if self.elementName == "item"
        {
            self.titleName = NSMutableString()
            self.link = NSMutableString()
            self.element = NSMutableString()
        }

    }
    
    func parser(parser: NSXMLParser!, foundCharacters string: String!)
    {
        if self.elementName == "title"
        {
            titleName.appendString(string)
        }
        else if self.elementName == "link"
        {
            link.appendString(string)
        }
    }
    
    func parser(parser: NSXMLParser!, didEndElement elementName: String!, namespaceURI: String!, qualifiedName qName: String!)
    {
        if elementName == "item"
        {
            var itemDictionary = Dictionary<String, String >()
            itemDictionary["title"] = self.titleName
            itemDictionary["link"] = self.link

            self.feedsArray.addObject(itemDictionary)

        }
    
    }
    
    func parserDidEndDocument(parser: NSXMLParser!)
    {
        self.tableView.reloadData()
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return self.feedsArray.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        var cell = tableView.dequeueReusableCellWithIdentifier("tableCell")
            as UITableViewCell
        var dictionary : NSMutableDictionary = self.feedsArray[indexPath.row] as NSMutableDictionary
        cell.textLabel.text = dictionary.objectForKey("title") as  NSString
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
