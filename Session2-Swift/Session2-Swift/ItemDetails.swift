//
//  ItemDetails.swift
//  Session2-Swift
//
//  Created by Mahsa Mirza on 10/24/14.
//  Copyright (c) 2014 Mahsa. All rights reserved.
//

import UIKit

class ItemDetails: UIViewController {

    @IBOutlet var nameLbel: UILabel!
    @IBOutlet var imageTumb: UIImageView!
    @IBOutlet var timeLabel: UILabel!
    
    var name : String?
    var time : String?
    var image : UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       if (name != nil)
       {
            nameLbel.text = name
       } else {
        nameLbel.text = ""
        }
        if (name != nil)
        {

        imageTumb.image = image
        }
        else{
        imageTumb.image = UIImage(named: "")
        }
        if (name != nil)
        {
            timeLabel.text=time
        }else{
        timeLabel.text = time
        }
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
