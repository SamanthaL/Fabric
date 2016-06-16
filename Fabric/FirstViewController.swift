//
//  FirstViewController.swift
//  Fabric
//
//  Created by Samantha Lauer on 2016-06-15.
//  Copyright © 2016 KYSS. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tbl: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //Go Back to table
    override func viewWillAppear(animated: Bool) {
        tbl.reloadData()
    }
    
    //UITableViewDelete
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            taskManager.loTasks.removeAtIndex(indexPath.row)
            tbl.reloadData()
        }
    }

    
    // UITableViewDataSource
    
//    public
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskManager.loTasks.count
    }
    
//    public
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        
        cell.textLabel!.text = taskManager.loTasks[indexPath.row].title
        cell.detailTextLabel!.text = taskManager.loTasks[indexPath.row].description
        
        
        
        return cell
    }
    
}

