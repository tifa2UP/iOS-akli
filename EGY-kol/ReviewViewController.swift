//
//  ReviewViewController.swift
//  	
//
//  Created by Abdellatif Abdelfattah on 1/13/16.
//  Copyright © 2016 Abdellatif Abdelfattah. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    
    @IBOutlet var backgroundImageView:UIImageView!
    @IBOutlet var ratingStackView:UIStackView!
    var rating:String?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        let scale = CGAffineTransformMakeScale(0.0, 0.0)
        let translate = CGAffineTransformMakeTranslation(0, 500)
        ratingStackView.transform = CGAffineTransformConcat(scale, translate)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
            UIView.animateWithDuration(0.35, delay: 0.0, options: [], animations: {
            self.ratingStackView.transform = CGAffineTransformIdentity
            }, completion: nil)
            UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.3,
            initialSpringVelocity: 0.5, options: [], animations: {
            self.ratingStackView.transform = CGAffineTransformIdentity
            }, completion: nil)
    }
    
    @IBAction func ratingSelected(sender: UIButton) {
        switch (sender.tag) {
        case 100: rating = "dislike"
        case 200: rating = "good"
        case 300: rating = "great"
        default: break
        }
        performSegueWithIdentifier("unwindToDetailView", sender: sender)
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
