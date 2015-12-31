//
//  RestuaruantDetailViewController.swift
//  akli
//
//  Created by Abdellatif Abdelfattah on 12/30/15.
//  Copyright © 2015 Abdellatif Abdelfattah. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController {
    
    @IBOutlet var restaurantImageView:UIImageView!
//    @IBOutlet var restaurantName: UILabel!
//    @IBOutlet var locationLabel:UILabel!
//    @IBOutlet var typeLabel:UILabel!
    
    var restaurant:Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restaurantImageView.image = UIImage(named: restaurant.image)
//        locationLabel.text = restaurant.location
//        typeLabel.text = restaurant.type
//        restaurantName.text = restaurant.name
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int {
        return 4 }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
        NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell",
        forIndexPath: indexPath) as! RestarauntDetailTableViewCell
        // Configure the cell...
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
        cell.fieldLabel.text = "Been here"
    cell.valueLabel.text = (restaurant.isVisited) ? "Yes, I've been here before" : "No"
    default:
        cell.fieldLabel.text = ""
    cell.valueLabel.text = ""
        }
        return cell
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
