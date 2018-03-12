//
//  Debug.swift
//  CatNames
//
//  Created by Leon Nguyen on 12/3/18.
//  Copyright © 2018 AGL. All rights reserved.
//

import Foundation

/// Writes the textual representations of `items` into standard output.
///
/// The textual representations are obtained for each item via the
/// expression `String(item)`.
///
/// - parameter items: The items to be written to standard output.
///
func dprint(_ items: Any...) {
    #if DEBUG
        print(items)
    #endif
}
