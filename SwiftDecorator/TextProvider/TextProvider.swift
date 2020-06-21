//
//  TextProvider.swift
//  SwiftDecorator
//
//  Created by Alexandre Thomas on 2020. 06. 21..
//  Copyright © 2020. Alexandre Thomas. All rights reserved.
//

import Foundation


protocol TextProvider {
    func localise(_ key: String) -> String
}
