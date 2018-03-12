//
//  CatFilter.swift
//  CatNames
//
//  Created by Leon Nguyen on 12/3/18.
//  Copyright © 2018 AGL. All rights reserved.
//

import UIKit

class CatFilter: NSObject {

    fileprivate var people: [Person]
    
    var maleOwnerCats: [Pet] = [Pet]()
    var femaleOwnerCats: [Pet] = [Pet]()
    
    init(people: [Person]) {
        self.people = people
    }
    
    func filter() {
        for person in people {
            dprint("Person: \(person.name)")
            
            guard let pets = person.pets else {
                continue
            }
            
            for pet in pets {
                if pet.isCat {
                    if person.isMale {
                        maleOwnerCats.append(pet)
                    }
                    else if person.isFemale {
                        femaleOwnerCats.append(pet)
                    }
                }
            }
        }
        
        maleOwnerCats.sort { (pet0, pet1) -> Bool in
            return pet0.name < pet1.name
        }
        femaleOwnerCats.sort { (pet0, pet1) -> Bool in
            return pet0.name < pet1.name
        }

        dprint("Done")
        
    }
    
}
