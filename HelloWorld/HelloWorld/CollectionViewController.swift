//
//  CollectionViewController.swift
//  iOS8SampleCode
//
//  Created by Miranda, Vinita (US - Mumbai) on 6/6/14.
//  Copyright (c) 2014 Deloitte. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet var collectionView : UICollectionView

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")

        // Do any additional setup after loading the view.
    }

    
    func collectionView(collectionView: UICollectionView!, numberOfItemsInSection section: Int) -> Int
    {
        return 2
    }

    func collectionView(collectionView: UICollectionView!, cellForItemAtIndexPath indexPath: NSIndexPath!) -> UICollectionViewCell!
    {
        var cell : UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as UICollectionViewCell
        cell.contentView.backgroundColor = UIColor.redColor()
        var titleLabel: UILabel = UILabel(frame: CGRectMake(0, 0, 300, 21))
        titleLabel.textColor = UIColor.whiteColor()
        titleLabel.text = "Cell \(indexPath.row)"
        cell.contentView.addSubview(titleLabel)
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
