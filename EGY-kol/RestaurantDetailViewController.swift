//
//  RestuaruantDetailViewController.swift
//  akli
//
//  Created by Abdellatif Abdelfattah on 12/30/15.
//  Copyright © 2015 Abdellatif Abdelfattah. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController {
    
    @IBOutlet var tableView:UITableView!
    @IBOutlet var restaurantImageView:UIImageView!
    @IBOutlet var ratingButton:UIButton!


    
    var restaurant:Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restaurantImageView.image = UIImage(named: restaurant.image)
        tableView.backgroundColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.2)
        tableView.tableFooterView = UIView(frame: CGRectZero)
        tableView.separatorColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
        UINavigationBar.appearance().barTintColor = UIColor(red: 242.0/255.0, green: 116.0/255.0, blue: 119.0/255.0, alpha: 1.0)
        if let barFont = UIFont(name: "Avenir-Light", size: 24.0) {
            UINavigationBar.appearance().titleTextAttributes =
            [NSForegroundColorAttributeName:UIColor.whiteColor(),
            NSFontAttributeName:barFont]
        }
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
        title = restaurant.name
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
        tableView.estimatedRowHeight = 36
        tableView.rowHeight = UITableViewAutomaticDimension
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int {
        return 5 }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
        NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell",
        forIndexPath: indexPath) as! RestarauntDetailTableViewCell
        // Configure the cell...
            cell.backgroundColor = UIColor.clearColor()
        switch indexPath.row {
    case 0:
        cell.fieldLabel.text = "Name"
    cell.valueLabel.text = restaurant.name
    case 1:
        cell.fieldLabel.text = "Type"
    cell.valueLabel.text = restaurant.type
    case 2:
        cell.fieldLabel.text = "Location"
    cell.valueLabel.text = restaurant.location
    case 3:
            cell.fieldLabel.text = "Phone number"
            cell.valueLabel.text = restaurant.phoneNumber
    case 4:
        cell.fieldLabel.text = "Been here"
    cell.valueLabel.text = (restaurant.isVisited) ? "Yes, I've been here before" : "No"
    default:
        cell.fieldLabel.text = ""
    cell.valueLabel.text = ""
        }
        return cell
    }
    
    @IBAction func close(segue:UIStoryboardSegue) {
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
