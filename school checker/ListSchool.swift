//
//  ListSchool.swift
//  school checker
//
//  Created by william wright  on 9/12/15.
//  Copyright (c) 2015 A.R.C softwere and enginering. All rights reserved.
//

import UIKit

class ListSchool: UITableViewController {
    var schoollist = ["Academy for Ideal Educaton","Achievement Preparatory Academy","Aidan Montessori School","Al-Huda School","Alexandria City Govt.","Alexandria Country Day School","Alexandria Schools","Ambleside School","American University","Andrews Air Force Base","Angelus Academy","Anne Arundel Community College","Anne Arundel Community College","Anne Arundel County Public Library","Anne Arundel County Schools","Aquinas Montessori School Mount Vernon Campus","Aquinas Montessori School Old Town","Archbishop Carroll HS","Archbishop Spalding HS","Arlington Co. Govt.","Arlington County Courts","Arlington County Schools","Arlington Free Clinic","Art and Drama Therapy Institute  ","Augusta School","Auguste Montessori School","BBar-T Child Care","Barrie School","Basis Charter School","Beauvoir School","Berkeley County Schools","Bowie State University","Bright Start Learning Ctr.","Building locks Learning Academy","Bullis School","Burgundy Farm Country Day","Calvary Road hristian School","Calvert County Schools","Calverton School","Capitol College","Capitol Hill Day School"," Carlos Rosario Intl' PCS","Catholic Univ. of America","Central Baptist Church of Camp Springs","Central Records Complex","Certified Learning Centers","Charles Co. District Court","Charles County Circuit Court","Charles County Government","Charles County Schools","Charles E. Smith Day School","Chelsea School","Children of the Future Child Care","Children's Center For Discovery","Charles County","Children's Therapy Center Springfield","Children's Therapy Center Sterling","Childrens' House of Old Town","Christ Chapel Academy","Christ Episcopal School","Church of the Redeemer School","City of Frederick","City of Gaithersburg","Clarke County Schools","Clifton Children's Academy","Clinton Christian School","CMS Training Academy & Protective Services","College of Southern MD Commonwealth Academy","Community Academy Charter School","Community of Hope","Congressional Schools of VA","Cortona Academy & TLC Tutoring","Country Day School in McLean","Crossway Comm. Montessori School","Culpeper Christian School","Culpeper County Schools","Dale City Christian Church Academy","DC Public Schools","Dreams and Visions Christian Learning","Eagle Academy PCS Wheeler Rd","ECHO Inc. of Leesburg","Edmund Burke School","Emmanuel Christian School","Excel Academy Public Charter School","Excellence Christian School","Fairfax Baptist Temple Academy","Fairfax Christian School","Fairfax Co. Govt.","Fairfax County Schools","Falls Church Govt","Falls Church Schools","Family Services","Fauquier County Schools","FBCW Early Learning Center","Federal Government","Fleming Speech Therapy-Centreville","Fleming Speech Therapy-Fredericksburg","Fleming Therapy Services-Alexandria","Fleming Therapy Services-Stafford","Flint Hill School","Fort Belvoir","Fort Foote Baptist Church","Fort Meade","Fortis College","Franklin Montessori School","Franklin Schools-Rockville","Frederick Christian Academy","Frederick Christian Academy","Frederick Community College","Frederick County Govt.","Frederick County Schools (MD)","Frederick County Schools (VA)","Fredericksburg Public Schools","Fresta Valley hristian School","Friends Meeting School","Friendship Public Charter Schools","Geneva Day School","George Mason University","Georgetown Day","Georgetown Meals on Wheels","Germanna Community College","Gesher Jewish Day School","Global Children's Center","Grace Episcopal Day School","Grace Lutheran School","Grace Preparatory School","Graduate School USA","Greater Mt. Calvary PreSch/Academy","Green Hedges School","Grover Place Childcare","GW Community School","Harbor School","Highland Park Christian Academy","Highland School","Hillside Child Care & Dev. Ctr.","Holton Arms School","Hood College","Hospitality High PCS","Howard County Schools","Howard University","IIdeal Academy Public Charter","Imagine Hope Charter-Lamond","Imagine Hope Community Charter-Tolson Campus","Ingenuity Prep Public Charter School","Inspired Teaching PCS","Israel Child Development Ctr.","JJ Hopkins Univ.-Main Campus","Jamon Montessori Day School","JCC of Greater Washington","Jefferson County Schools","Jericho Christian Academy","Kendall Elementary School","Kid's Corne","Kiddie Country Developmental Learning Centers","KidsCo","King George County Public Schools","King's Kids Child Dev Center","Kingdom Kids Child Dev.","Kipp DC","Kuumba Learning Center","Lab School of Washington","Landon School","Langley School-McLean","LAYC YouthBuild PCS","Little Busy Bee Preschool","Little People Daycare","Little Smiling Faces Daycare Ctr.1","Little Smiling Faces Daycare Ctr.2","Loudoun County Schools","Love of Learning Montessori School","Manassas City Schools","Manassas Park City Schools","Maret School","Maria Teresa's Babies Early Enrichment Center","Marine Corps Base - Quantico","Mary's Cntr for Maternal & Child Care","Mary's Cntr for Maternal & Child Care","Maryland Int'l Day School","Marymount University","Matthew's Center for Visual Learning","McLean Children's Academy","Monday MD School for the Deaf//Frederick","Meals on Wheels College Park","Metropolitan Day School","Middleburg Academy","Middleton Lane Child Care","Model Sec. School for the Deaf","Montessori Country School","Montessori School of Herndon","Montessori School-Chevy Chase","Montgomery Co. Cir. Ct","Montgomery Co. Govt.","Montgomery College","Montgomery County Register of Wills","Montgomery County Schools","Montrose Christian School","Morgan County Schools","Mother's Love Child Care","Muslim Community School","NASA Goddard","National Cathedral School","National Christian Academy","National Collegiate Prep PCS","Natl. Inst. of Standards & Tech.","Natl. Presbyterian School","Naylor Road School","New Life Assembly Academy","New Life Christian School","New School of N. Virginia","No. Va. Comm. College","Noah's Ark Learning Center","Noah's Ark Too!","Norbeck Montessori Center","Northern Virginia Academy","Norwood School","Nysmith School","Open Arms Ashburn","Open Arms Ashburn","Options Public Charter School"," Ottley Music School","ParkView Child Dev. Ctr.","Paul Jr. High Public Charter School","Perry Street Public Charter School","Phillips Programs-Annandale","Phillips School Laurel","Pinnacle Academy","Potomac School (McLean)","Powhatan School","Primary Day School","Prime Time Children's Center","Prince George's Cir. Court","Prince George's Cir. Court","Prince George's Co. Govt.","Prince George's Comm. College","Prince George's County Schools","Prince George's District Court","Upper Marlboro"," Prince William Co. Govt.","Providence Christian Academy","Quantico DOD Schools","Rappahannock County Schools","Reston Children's Center","Reston Montessori School","Riverdale Baptist School","Riverfront Christian School","Robbin's Nest Learning Center","Robbin's Nest Learning Center","Rockville Day Care Assoc.","Rosemount Center","RRSCB-AAA","SS. Md. Higher Education Ctr.","Sacred Life Academy for Boys","Sandy Spring Friends School","Sidwell Friends","Somerset Prep Academy Charter DC","Spotsylvania County Schools","St. Albans School","St. Andrew's Episcopal School","St. John's Episcopal School","Monday St. Mary's Co. Circuit Court","St. Mary's College","St. Mary's County Govt.","St. Mary's Dist. Ct.","St. Matthew's Lutheran Day School","St. Patrick's Episcopal Day School","Stafford County Schools","Star of Bethlehem Christian Academy","Summit School","Sunbeam Children's Center-STUMC","Sunshine Daycare Center","Super Kids Clubhouse","ITT. Marshall Academy Public Charter","Tabernacle Learning Ctr.","The Arc of Southern Maryland","The Hill School of Middleburg","The Ivymount School","The Supreme Learning Center","Tiny Saints Christian Academy","Towson University","UUMD-Baltimore County","UMD-College Park","Unity Health Care","Universities at Shady Grove","University of Mary Washington","University of Maryland","University of Oklahoma","US Courthouse-Greenbelt","US District Court-DC","Vienna Baptist Children's Center","Virginia International University","Wakefield School-The Plains","Warrenton Tiny Tots","Washington County Schools","Washington Episcopal School","Washington Latin PCS","Washington Math Science Tech. Public Charter","Washington Waldorf School","Washington Yu Ying Public Charter School","Watch Me Grow Dev. Cntr","Weems Creek Nursery School","Wesley Theological Seminary","White Flint Children's House","Whitman-Walker Health","Woodstream Christian Academy","Woodyard Road Nursery","Word of Life Christian Academy","YYMCA Alexandria","Preschool and Schoolage Childcare","YMCA","Preschool & school-age childcare","YMCA Fairfax County Reston","Preschool and Schoolage Childcare","YMCA Loudoun County","YMCA Potomac Overlook","Preschool and childcare","YMCA-Anthony Bowen","YMCA-Arlington","School Age Childcare","YMCA-Ayrlawn","YMCA-Calomiris","YMCA-National Capital","YMCA-Prince George's County","YMCA-Silver Spring"]
    
    
    
       
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    //override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
         //#warning Potentially incomplete method implementation.
         //Return the number of sections.
       //return 0
    //}

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        println("1");
        return 1
       

    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell
println("2");
        

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

}
