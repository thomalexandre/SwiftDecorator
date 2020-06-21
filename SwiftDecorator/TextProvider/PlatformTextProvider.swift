//
//  PlatformTextProvider.swift
//  SwiftDecorator
//
//  Created by Alexandre Thomas on 2020. 06. 21..
//  Copyright © 2020. Alexandre Thomas. All rights reserved.
//

import Foundation

struct PlatformTextProvider: TextProvider {
    
    let decoratee: TextProvider
    
    func localise(_ key: String) -> String {
        
        #if os(iOS)
            let suffix = "_ios"
        #elseif os(tvOS)
            let suffix = "_tvos"
        #else
            let suffix = ""
        #endif
        
        let newKey = "\(key)\(suffix)"
        let result = decoratee.localise(newKey)
        
        if !result.elementsEqual(newKey) {
            return result
        }
        
        return decoratee.localise(key)
    }
}
