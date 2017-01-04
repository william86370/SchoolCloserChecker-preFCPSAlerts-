//
//  schooltablecontroller.swift
//  school checker
//
//  Created by william wright  on 9/12/15.
//  Copyright (c) 2015 A.R.C softwere and enginering. All rights reserved.
//

import UIKit

class schooltablecontroller: UITableViewController {

    var schools = ListSchool().schoollist
    
    
    var schoolsclosed = [""]
    
    
    
    
    
    var refresher: UIRefreshControl!
    
    func refresh() {
        
        
        
        var query = PFQuery(className: "countyv2")
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]!, error: NSError!) -> Void in
            
            if error == nil {
                
                for object in objects {
                    let defaults = NSUserDefaults.standardUserDefaults()
                    
                    
                    let fag = object["Closed"]as! [String]
                    defaults.setObject(fag, forKey: "array")
                    println("receved school list from server")
                    SwiftSpinner.hide()
                    self.tableView.reloadData()
                  self.refresher.endRefreshing()
                    
                }
            } else {
                
                SwiftSpinner.show("Failed to connect Check Connection and Try Again", animated: false)
            }
        }
        
        
        
        
        
        
        
        
    }
    
    
    override func viewDidLoad() {
        
        refresher = UIRefreshControl()
        refresher.attributedTitle = NSAttributedString(string: "Pull To Refresh")
        refresher.addTarget(self, action: "refresh", forControlEvents: UIControlEvents.ValueChanged)
        
        self.tableView.addSubview(refresher)
        
        
        refresh()
        
        
        
        
        
        let defaults = NSUserDefaults.standardUserDefaults()
        if let useranem = defaults.arrayForKey("array")
        {
            self.schoolsclosed = defaults.arrayForKey("array") as! [String]
        }
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return schools.count
        
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> schoolcell {
        let cell = tableView.dequeueReusableCellWithIdentifier("bud", forIndexPath: indexPath) as! schoolcell

        
        
        
        cell.schoollbl.text = schools[(indexPath.row )]
        if (schoolstatus(schools[indexPath.row], Index:(indexPath.row ) ) == true){
            cell.schoolpic.image = UIImage(named: "18657834_x_mark_red_circle_answer_2_xlarge.png")!
        }
        if (schoolstatus(schools[indexPath.row], Index:(indexPath.row ) ) == false){
            cell.schoolpic.image = UIImage(named: "niX8MpbGT.png")!
        }


        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        
        
        
        
    }
    
    
    func schoolstatus(school: String,  Index: Int) -> Bool {
        
        if (self.schoolsclosed[Index] == "true") {
            return true
        }else{
            
            
            
            
            
            return false
        }
    }

}
