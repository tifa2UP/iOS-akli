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
    @IBOutlet var locationLabel:UILabel!
    @IBOutlet var typeLabel:UILabel!
    
    var locationText = ""
    var typeText = ""

    var restaurantImage = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    restaurantImageView.image = UIImage(named: restaurantImage)
        locationLabel.text = locationText
        typeLabel.text = typeText
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
