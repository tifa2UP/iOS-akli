//
//  Resturuant.swift
//  akli
//
//  Created by Abdellatif Abdelfattah on 12/31/15.
//  Copyright © 2015 Abdellatif Abdelfattah. All rights reserved.
//

import Foundation

class Restaurant{
    var name = ""
    var location = ""
    var type = ""
    var image = ""
    var phoneNumber = ""
    var isVisited = false
    var rating = 0
    
    init(name: String, type: String, location: String, phoneNumber: String, image: String, isVisited: Bool){
        self.name = name
        self.location = location
        self.phoneNumber = phoneNumber
        self.type = type
        self.image = image
        self.isVisited = isVisited
    }
    
    init(){
        
    }
}
