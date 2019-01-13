//
//  SwipeTableViewController.swift
//  Todoey
//
//  Created by William Gill on 13.01.19.
//  Copyright © 2019 William Gill. All rights reserved.
//

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }

    //Tableview data source methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
        cell.delegate = self
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            // handle action by updating model with deletion
            self.deleteItem(at: indexPath)
            
        }
        
        let tickAction = SwipeAction(style: .default, title: "Done") { action, indexPath in
            print ("Ticked")
            self.tickItem(at: indexPath)
        }
        
        // customize the action appearance
        deleteAction.image = UIImage(named: "trash-icon")
        tickAction.image = UIImage(named: "tick-icon")
        
        return [deleteAction, tickAction]
    }
    
    
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
        var options = SwipeOptions()
        options.expansionStyle = .destructive
        return options
    }
    
    func deleteItem(at indexPath: IndexPath) {
        //Delete the item
    }
    
    func tickItem(at indexPath: IndexPath) {
        //Tick the item
    }
    
}

