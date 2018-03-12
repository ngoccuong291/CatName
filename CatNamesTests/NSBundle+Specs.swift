//
//  NSBundle+Specs.swift
//  CatNamesTests
//
//  Created by Leon Nguyen on 12/3/18.
//  Copyright © 2018 AGL. All rights reserved.
//

import Foundation

extension Bundle {
    
    static var testBundle: Bundle {
        return .init(for: _SpecsBundle.self)
    }
    
    func loadData(fromFile name: String, ofType type: String? = nil) -> Data? {
        return path(forResource: name, ofType: type)
            .flatMap { try? Data(contentsOf: URL(fileURLWithPath: $0)) }
    }
    
    func loadJSON(fromFile name: String) -> Any? {
        return loadData(fromFile: name, ofType: "json")
            .flatMap { try? JSONSerialization.jsonObject(with: $0, options: []) }
    }
}

private class _SpecsBundle: NSObject {}
