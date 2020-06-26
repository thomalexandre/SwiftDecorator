//
//  LanguageManager.swift
//  SwiftDecorator
//
//  Created by Alexandre Thomas on 2020. 06. 21..
//  Copyright © 2020. Alexandre Thomas. All rights reserved.
//

import Foundation

class LanguageManager {
    
    private var texts = [String: String]()
    
    public static let sharedInstance = LanguageManager()
    
    private init() { }
    
    func add(texts: [String: String]) {
        self.texts.merge(texts) { (a, b) -> String in
            return a
        }
    }
    
    func localise(_ key: String) -> String {
        return texts[key] ?? key
    }
}
