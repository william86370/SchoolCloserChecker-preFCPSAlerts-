//
//  schoolcheck.swift
//  school checker
//
//  Created by william wright  on 9/12/15.
//  Copyright (c) 2015 A.R.C softwere and enginering. All rights reserved.
//

import UIKit
import Parse


class schoolcheck: UIViewController {
        
   
    
 /*
    
    var url = NSURL(string:"http://www.nbcwashington.com/weather/school-closings")
     if url != nil {
    
    let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
    
    
    var urlError = false
    
    var weather = ""
    
    var weather2 = ""
    if error == nil {
    
    var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding) as String!
    
    
    var urlContentArray = urlContent.componentsSeparatedByString("<a name=\"top\" id=\"top\"></a>")
    
    
    
    if urlContentArray.count > 0 {
    
    
    var weatherArray = urlContentArray[1].componentsSeparatedByString("schoolOpen")
    
    weather = weatherArray[0] as String
    
    
    
    
    weather = weather.lowercaseString
    
    
    
    } else {
    
    urlError = true
    
    }
    
    
    
    } else {
    
    urlError = true
    
    }
    
    dispatch_async(dispatch_get_main_queue()) {
    
    if urlError == true {
    
    
    
    } else {
    
    
    
    
    
    
    
    county = county.lowercaseString
    println(county)
    
    
    if (weather as NSString).containsString(county){
    county = NSUserDefaults.standardUserDefaults().objectForKey("county")! as! String
    var weather2 = ""
    var urlContent2 = NSString(data: data, encoding: NSUTF8StringEncoding) as String!
    
    var urlContentArray2 = urlContent2.componentsSeparatedByString("class=\"closing_item\">"+(county)+"<br/><span>")
    
    if urlContentArray2.count > 0 {
    
    var weatherArray2 = urlContentArray2[1].componentsSeparatedByString("</span></p>")
    
    weather2 = weatherArray2[0] as String
    
    
    
    
    weather2 = weather2.lowercaseString
    county = county.lowercaseString
    
    
    }
    
    
    self.countytext.hidden = false
    self.yourschoolsis.hidden = false
    self.text.hidden = false
    
    self.schoolline.hidden = false
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    
    if (weather2 as NSString).containsString("closed"){
        self.isitdelayed.text = (county) + " is closed today enjoy your day off"
    }
    if (weather2 as NSString).containsString("open at"){
    
    
    }
    
    
    if (weather2 as NSString).containsString("activities canceled"){
    
    
    
    println("afternooon")
    self.schoolpic.image = UIImage(named: "18657834_x_mark_red_circle_answer_2_xlarge.png")
    
    
    
    
    }
    
    
    
    
    
    
    
    
    }else{
    
    
    self.schoolpic.image = UIImage(named:"niX8MpbGT.png")
    self.text.text = "OPEN"
    
    
    
    
    
    
    
    
    self.date.text = v
    
    
    
    
    
    
    
    
    }
    
    
    
    
    }
    }
    
    
    
    
    
    
    
    
    
    
    
    })
    
    task.resume()
    
    
    } else {
    
    
    
    }
*/
    override func viewDidLoad() {
       
        SwiftSpinner.show("Connecting \nto satellite...").addTapHandler({
            SwiftSpinner.hide()
        })
        
        println("loading")
        
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
                    self.performSegueWithIdentifier("show", sender: self)
                    
                }
            } else {
                
                SwiftSpinner.show("Failed to connect Check Connection and Try Again", animated: false)
            }
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
