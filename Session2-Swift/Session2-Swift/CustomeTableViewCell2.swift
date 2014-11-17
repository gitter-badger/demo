//
//  CustomeTableViewCell2.swift
//  Session2-Swift
//
//  Created by Mahsa Mirza on 11/14/14.
//  Copyright (c) 2014 Mahsa. All rights reserved.
//

import UIKit

class CustomeTableViewCell2: UITableViewCell {
//class CustomeTableViewCell2: UITableViewController , UISearchBarDelegate, UISearchDisplayDelegate{

    
    //var filetered = listen(<#Int32#>, <#Int32#>)
    
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemTime: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
