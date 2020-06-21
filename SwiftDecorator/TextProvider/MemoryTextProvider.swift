//
//  LanguageManager.swift
//  SwiftDecorator
//
//  Created by Alexandre Thomas on 2020. 06. 21..
//  Copyright © 2020. Alexandre Thomas. All rights reserved.
//

import Foundation

struct MemoryTextProvider: TextProvider {
    
    let texts: [String: String]
    
    // MARK: - TextProvider
    
    func localise(_ key: String) -> String {
        return texts[key] ?? key
    }
}
