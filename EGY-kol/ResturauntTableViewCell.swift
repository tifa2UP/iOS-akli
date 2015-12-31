//
//  ResturauntTableViewCell.swift
//  akli
//
//  Created by Abdellatif Abdelfattah on 12/25/15.
//  Copyright © 2015 Abdellatif Abdelfattah. All rights reserved.
//

import UIKit

class ResturauntTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
