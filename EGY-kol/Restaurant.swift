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
    var isVisited = false
    
    init(name: String, type: String, location: String, image: String, isVisited: Bool){
        self.name = name
        self.location = location
        self.type = type
        self.image = image
        self.isVisited = isVisited
    }
    
    init(){
        
    }
}
