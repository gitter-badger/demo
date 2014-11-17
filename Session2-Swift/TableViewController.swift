//
//  TableViewController.swift
//  Session2-Swift
//
//  Created by Mahsa Mirza on 10/24/14.
//  Copyright (c) 2014 Mahsa. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController , UISearchBarDelegate , UISearchDisplayDelegate{
    
    var todoItems = [ToDoListItem]()
    var searchResults = [ToDoListItem]()
    
    let CellIdentifire = "MyCustomCell"

    
//    var itemChecked = Array(count: 7, repeatedValue: false)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        searchDisplayController?.delegate = self
      
        self.tableView.registerNib(UINib(nibName: "CustomeTableViewCell2", bundle: nil), forCellReuseIdentifier: self.CellIdentifire)
        
        
        
        let item1 = ToDoListItem()
        item1.iName = "Buy Groceries"
        item1.iImage = "berry.jpg"
        item1.iTime = "10.00 am"
        item1.bChecked = false
        
        let item2 = ToDoListItem()
        item2.iName = "Pickup Laundry"
        item2.iImage = "dirty-laundry.jpg"
        item2.iTime = "11.00 am"
        item2.bChecked = false
        
        let item3 = ToDoListItem()
        item3.iName = "Wash Car"
        item3.iImage = "car.jpg"
        item3.iTime = "10.00 am"
        item3.bChecked = false
        
        let item4 = ToDoListItem()
        item4.iName = "Return Library Books"
        item4.iImage = "book.png"
        item4.iTime = "1.00 pm"
        item4.bChecked = false
        
        let item5 = ToDoListItem()
        item5.iName = "Finish Assignment"
        item5.iImage = "study.png"
        item5.iTime = "2.00 pm"
        item5.bChecked = false
        
        
        todoItems = [item1 , item2 , item3 , item4 , item5]
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }

    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.searchDisplayController!.searchResultsTableView {
            return searchResults.count
        } else {
            return todoItems.count
        }
    }

    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

         var cell = tableView.dequeueReusableCellWithIdentifier(self.CellIdentifire) as? CustomeTableViewCell2
        
        if cell == nil {
             cell = CustomeTableViewCell2(style: UITableViewCellStyle.Default, reuseIdentifier: CellIdentifire)
       }
        
        var myitem: ToDoListItem
        
        if tableView == searchDisplayController!.searchResultsTableView {
            cell?.textLabel.text = searchResults[indexPath.row].iName
            //myitem = searchResults[indexPath.row]
        }
            
        else {
            //myitem = searchResults[indexPath.row]
            cell?.itemName.text = todoItems[indexPath.row].iName
            cell?.itemTime.text = todoItems[indexPath.row].iTime
            cell?.itemImage.image = UIImage(named: todoItems[indexPath.row].iImage)

        }
        
//        cell!.itemName.text = myitem.iName
//        cell!.itemImage.image = UIImage (contentsOfFile: myitem.iImage)
//        cell!.itemTime.text = myitem.iTime
//        
        return cell!
    }
    
    
    
    
    
     override func tableView(tableView: UITableView,
        didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        var cell = tableView.cellForRowAtIndexPath(indexPath) //as? CustomeTableViewCell2
        //var myItem = [ToDoListItem]()[indexPath.row]
        
        if todoItems[indexPath.row].bChecked
            {todoItems[indexPath.row].bChecked = false}
        
        else
            {todoItems[indexPath.row].bChecked = true}
        
        if todoItems[indexPath.row].bChecked
        {cell?.accessoryType = .DisclosureIndicator}
            
        else
                {cell?.accessoryType = .Checkmark}
        
        
        tableView.deselectRowAtIndexPath(tableView.indexPathForSelectedRow()!, animated: true)
    }
   


    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        todoItems.removeAtIndex(indexPath.row)
        
        
        tableView.deleteRowsAtIndexPaths(NSArray(object: indexPath), withRowAnimation:.Right)
        //?????
            // Delete the row from the data source
        
            //tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        
        tableView.endUpdates()
        
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showItemDetail" {
            print("success")
           // var indexPath = self.tableView.indexPathForSelectedRow()
            var destViewController = segue.destinationViewController as ItemDetails
            let myItem = sender as ToDoListItem
            
            destViewController.name = myItem.iName
            destViewController.time = myItem.iTime
            destViewController.image = UIImage(named: myItem.iImage)
        }
     
    }
    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 72;
    }
    
    
    func filterContentForSearchText(searchText: String, scope: String = "All") {
        searchResults = todoItems.filter({( item : ToDoListItem) -> Bool in
            var categoryMatch = (scope == "All")
            var stringMatch = item.iName.lowercaseString.rangeOfString(searchText.lowercaseString)
            return categoryMatch && (stringMatch != nil)
        })
    }
    
    
    func searchDisplayController(controller: UISearchDisplayController!, shouldReloadTableForSearchString searchString: String!) -> Bool {
        filterContentForSearchText(searchDisplayController!.searchBar.text)
        return true
    }

    

}