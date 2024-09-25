//
//  NSString+Extensions.swift
//  CvModel
//
//  Created by Antonio Montes on 3/21/18.
//  Copyright © 2018 Antonio Montes. All rights reserved.
//

import Foundation

extension NSString {

    public func webSafeStr(addDelimiters: Bool = false) -> String {

        let searchTerm = self as String

        let spaceCount = searchTerm.filter{$0 == " "}.count
        if spaceCount > 0 {

            let delim = String("%22") // URL Escape Code
            let space = String("%20") // URL Escape Code

            var st: String = searchTerm
            if addDelimiters {

                st = delim + st
                st += delim
            }

            // replace spaces
            return st.replacingOccurrences(of: " ", with: space)
        }

        return searchTerm
    }
}
