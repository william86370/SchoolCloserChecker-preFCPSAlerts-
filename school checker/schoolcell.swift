//
//  schoolcell.swift
//  school checker
//
//  Created by william wright  on 9/12/15.
//  Copyright (c) 2015 A.R.C softwere and enginering. All rights reserved.
//

import UIKit
import Parse

class schoolcell: UITableViewCell {
    
    @IBOutlet weak var schoollbl: UILabel!
    
    @IBOutlet weak var schoolpic: UIImageView!
    
    
   
    
    
    

    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
