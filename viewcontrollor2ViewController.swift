///Users/william86378/Desktop/school checker/school checker.xcodeproj
//  viewcontrollor2ViewController.swift
//  school checker
//
//  Created by william wright  on 2/28/15.
//  Copyright (c) 2015 A.R.C softwere and enginering. All rights reserved.
//

import UIKit


class viewcontrollor2ViewController: UIViewController {

    
    @IBOutlet var text: UILabel!
    
    
    @IBOutlet var schoolpic: UIImageView!
    
    
    
        
    @IBOutlet var countytext: UILabel!
    
    
    
    
    
    
    @IBOutlet var yourschoolsis: UILabel!
    
    
    @IBOutlet var date: UILabel!
    
    
    
    
    
    @IBOutlet var schoolline: UILabel!
    
    
    var refresher: UIRefreshControl!
    
    
    @IBOutlet var isitdelayed: UILabel!
    
    
   
    
    
    
    
    
    
    override func viewDidLoad() {
        
        
        var formatter: NSDateFormatter = NSDateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        let stringDate: String = formatter.stringFromDate(NSDate())
        println(stringDate)
        var v = "Last Updated: " + stringDate
        
        
        var county = NSUserDefaults.standardUserDefaults().objectForKey("count")! as! String
        
        countytext.text = county
        
        
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
                          
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            self.schoolpic.image = UIImage(named: "18657834_x_mark_red_circle_answer_2_xlarge.png")
                            self.text.text = "CLOSED Enjoy your day off"
                            self.schoolline.text = "Schools are Closed in your area. Students are not required to report to class becuase there is no school"
                            self.isitdelayed.text = "we beleave your school is closed this is beta so not 100% sure"
                            
                            if (weather2 as NSString).containsString("closed"){
                                self.countytext.hidden = false
                                self.yourschoolsis.hidden = false
                                self.text.hidden = false
                                self.isitdelayed.hidden = false
                                self.schoolline.hidden = false
                                
                                self.schoolpic.image = UIImage(named: "18657834_x_mark_red_circle_answer_2_xlarge.png")
                                self.text.text = "CLOSED Enjoy your day off"
                                self.schoolline.text = "Schools are Closed in your area. Students are not required to report to class becuase there is no school"
                                self.isitdelayed.text = (county) + " is closed today enjoy your day off"
                            }
                            if (weather2 as NSString).containsString("open at"){
                                
                                
                                println("dose not")
                                self.text.text = "OPEN"
                                self.isitdelayed.text = " "
                                self.schoolline.text = "Schools are open in your area. Students are required to report to class on time"
                                
                                
                                
                            }

                            
                             if (weather2 as NSString).containsString("activities canceled"){
                                
                                
                                self.countytext.hidden = false
                                self.yourschoolsis.hidden = false
                                self.text.hidden = false
                                self.isitdelayed.hidden = false
                                self.schoolline.hidden = false
                                
                                
                                println("afternooon")
                                self.isitdelayed.text = "Afternoon and Evening Activities Canceled"
                                
                                self.text.text = "CLOSED All Afternoon and Evening Activities Canceled"
                                self.schoolline.text = "All activities in "+(county)+" or on grounds scheduled for 1 p.m. or later are canceled"
                                self.isitdelayed.text = "afterschool activites are canceled today"
                                
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
