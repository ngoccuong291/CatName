//
//  CatNamesTests.swift
//  CatNamesTests
//
//  Created by Leon Nguyen on 12/3/18.
//  Copyright © 2018 AGL. All rights reserved.
//

import Quick
import Nimble
import ObjectMapper

@testable import CatNames

final class CatNamesSpec: QuickSpec {
    
    override func spec() {
        describe("CatFilter") {
            
            let sampleResponse = Bundle.testBundle.loadJSON(fromFile: "sampleResponse")
            let people: [Person] = Mapper<Person>().mapArray(JSONObject: sampleResponse)!
            
            let catfilter = CatFilter(people: people)
            
            dprint("People: \(people)")
            beforeEach {
                
            }
            
            afterEach {
                
            }
            
            it("should filter all the cats and sort them in alphabetical order") {
                catfilter.filter()
                expect(catfilter.maleOwnerCats.count).to(equal(4))
                expect(catfilter.femaleOwnerCats.count).to(equal(3))
                
                let firstMaleOwnerCat = catfilter.maleOwnerCats[0]
                expect(firstMaleOwnerCat.name).to(equal("Garfield"))
                
                let lastMaleOwnerCat = catfilter.maleOwnerCats[3]
                expect(lastMaleOwnerCat.name).to(equal("Tom"))
                
                let firstFemaleOwnerCat = catfilter.femaleOwnerCats[0]
                expect(firstFemaleOwnerCat.name).to(equal("Garfield"))
                
                let lastFemaleOwnerCat = catfilter.femaleOwnerCats[2]
                expect(lastFemaleOwnerCat.name).to(equal("Tabby"))
            }
            
        }
    }
}
