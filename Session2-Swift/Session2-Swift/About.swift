//
//  About.swift
//  Session2-Swift
//
//  Created by Mahsa Mirza on 11/16/14.
//  Copyright (c) 2014 Mahsa. All rights reserved.
//

import UIKit
import WebKit

class About: UIViewController {

    @IBOutlet var webpage: UIWebView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
//       let url = NSURL .fileURLWithPath("Welcome to De Anza College")
//        let request = NSURLRequest (URL: url!)
//        self.webpage .loadRequest (request)
//        
        
//        let url = NSURL (string: "http://deanza.edu")
//        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
//            println(NSString (data: data, encoding: NSUTF8StringEncoding))
//        }
//        
//        task.resume()
//
        
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
