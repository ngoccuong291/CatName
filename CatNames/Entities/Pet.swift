//
//  Pet.swift
//  CatNames
//
//  Created by Leon Nguyen on 12/3/18.
//  Copyright © 2018 AGL. All rights reserved.
//

import UIKit
import ObjectMapper

class Pet: Mappable {

    var name: String = ""
    var type: String?
    
    required init?(map: Map){
    }
    
    func mapping(map: Map) {
        name <- map["name"]
        type <- map["type"]
    }
    
    var isCat: Bool {
        return type == "Cat"
    }
    
}
