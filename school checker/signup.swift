//
//  signup.swift
//  school checker
//
//  Created by william wright  on 2/28/15.
//  Copyright (c) 2015 A.R.C softwere and enginering. All rights reserved.
//

import UIKit

class signup: UIViewController {
    
    
    
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    func displayAlert(title:String, error:String) {
        
        var alert = UIAlertController(title: title, message: error, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: { action in
            
            self.dismissViewControllerAnimated(true, completion: nil)
            
        }))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    @IBOutlet var usernamebox: UITextField!

    @IBOutlet var passwordbox: UITextField!
    
    @IBOutlet var passwordbox2: UITextField!
    
    
    @IBOutlet var emailbox: UITextField!
    
    
    @IBOutlet var schoolcounty: UITextField!
    
    @IBAction func signup(sender: AnyObject) {
        
        
        var error = ""
        
        if usernamebox.text == "" || passwordbox.text == "" || passwordbox.text != passwordbox2.text || schoolcounty.text == "" {
            
            
            error = "Double Check your username or password's  "
            
            
            
            
        }
        
        if error != "" {
            displayAlert("There is an error in the form", error: error)
            
        }else{
            
            
            
            
            
            
             NSUserDefaults.standardUserDefaults().setObject(schoolcounty.text, forKey: "county")
            
            
            
            var user = PFUser()
            user.username = usernamebox.text
            user.password = passwordbox.text
            
            user.signUpInBackgroundWithBlock {
                (succeeded: Bool!, signupError: NSError!) -> Void in
                
                self.activityIndicator.stopAnimating()
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
                
                if signupError == nil  {
                    // Hooray! Let them use the app now.
                    
                    println("signed up")
                    
                    
                } else {
                    if let errorString = signupError.userInfo?["error"] as? NSString {
                        
                        // Update - added as! String
                        
                        error = errorString as String
                        
                    } else {
                        
                        error = "Please try again later."
                        
                    }
                    
                    self.displayAlert("Could Not Sign Up", error: error)
                    
                }
            }
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
        
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
