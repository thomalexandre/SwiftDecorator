//
//  MultiLanguageTextProvider.swift
//  SwiftDecorator
//
//  Created by Alexandre Thomas on 2020. 06. 21..
//  Copyright © 2020. Alexandre Thomas. All rights reserved.
//

import Foundation


struct MultiLanguageTextProvider: TextProvider {
    
    var texts = [String: TextProvider]()
    var languageCode = "en"
    
    mutating func add(languageCode: String, text: TextProvider) {
        texts[languageCode] = text
    }
    
    func localise(_ key: String) -> String {
        
        guard let provider = texts[languageCode] else {
            return key
        }
        
        return provider.localise(key)
    }
}
