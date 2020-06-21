//
//  MissingKeyTextProvider.swift
//  SwiftDecorator
//
//  Created by Alexandre Thomas on 2020. 06. 21..
//  Copyright © 2020. Alexandre Thomas. All rights reserved.
//

import Foundation

struct MissingKeyTextProvider: TextProvider {
    
    let decoratee: TextProvider
    
    func localise(_ key: String) -> String {
        let result = decoratee.localise(key)
        return result.elementsEqual(key) ? "[KEY] \(result)" : result
    }
}
