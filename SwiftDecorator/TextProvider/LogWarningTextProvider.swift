//
//  LogWarningTextProvider.swift
//  SwiftDecorator
//
//  Created by Alexandre Thomas on 2020. 06. 21..
//  Copyright © 2020. Alexandre Thomas. All rights reserved.
//

import Foundation

struct LogWarningTextProvider: TextProvider {
    
    let decoratee: TextProvider
    
    func localise(_ key: String) -> String {
        
        let result = decoratee.localise(key)
        
        if result.elementsEqual(key) {
            print("[WARNING] Missing translation text for key: \(key)")
        }
        
        return result
    }
}
