//
//  Person.swift
//  CatNames
//
//  Created by Leon Nguyen on 12/3/18.
//  Copyright © 2018 AGL. All rights reserved.
//

import UIKit
import ObjectMapper

class Person: Mappable {
    
    var name: String?
    var gender: String?
    var age: Int?
    var pets: [Pet]?
    
    required init?(map: Map){
    }
    
    func mapping(map: Map) {
        name <- map["name"]
        gender <- map["gender"]
        age <- map["age"]
        pets <- map["pets"]
    }
    
    var isMale: Bool {
        return gender == "Male"
    }
    
    var isFemale: Bool {
        return gender == "Female"
    }

}
