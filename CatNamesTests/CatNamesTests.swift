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
        describe("sample test") {
            
            let sampleResponse = Bundle.testBundle.loadJSON(fromFile: "sampleResponse")
            let people: [Person] = Mapper<Person>().mapArray(JSONObject: sampleResponse)!
            
            dprint("People: \(people)")
            beforeEach {
                
            }
            
            afterEach {
                
            }
            
            it("run a sample test") {
                expect(true).to(beTrue())
            }
            
        }
    }
}
