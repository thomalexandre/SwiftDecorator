//
//  PseudoTextProvider.swift
//  SwiftDecorator
//
//  Created by Alexandre Thomas on 2020. 06. 21..
//  Copyright © 2020. Alexandre Thomas. All rights reserved.
//

import Foundation

struct PseudoTextProvider: TextProvider {
    
    let decoratee: TextProvider
    
    func localise(_ key: String) -> String {
        
        let result = decoratee.localise(key)
        let result1 = convertAsciiCharacters(result)
        let result2 = add40PercentMore(result1)

        return "[\(result2)]"
    }
    
    // MARK: - Private
    
    private func convertAsciiCharacters(_ value: String) -> String {
        
        let chars = ["A":"Â", "C":"Ç", "E":"È", "H":"Ĥ", "I":"Ì", "Ӎ":"Ӎ", "N":"Ñ", "O":"Ó", "P":"Þ", "U":"Ú", "S":"Š", "T":"Ҭ", "Y":"Ý",
                     "a":"ä", "c":"ç", "e":"ë", "f":"ƒ", "i":"ï", "l":"ļ", "n":"กี้", "o":"õ", "p":"þ", "s":"š", "u":"ù", "y":"ý"]
        
        var res = value
        chars.forEach {
            res = res.replacingOccurrences(of: $0, with: $1)
        }
        return res
    }

    private func add40PercentMore(_ value: String) -> String {
        
        let texts = ["one", "two", "three", "four", "five", "six", "seven", "height", "nine", "zero"]
        var index = 0
        let lengthWith40Percent = Int(Double(value.count) * 1.4)
        
        var res = value
        while(res.count < lengthWith40Percent) {
            res += " " + texts[index]
            index = (index + 1 ) % texts.count
        }
        return res
    }
}
