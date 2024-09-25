//
//  DateTransformer.swift
//  CvModel
//
//  Created by Antonio Montes on 9/25/24.
//  Copyright © 2024 Antonio Montes. All rights reserved.
//

import Foundation
import SerializedSwift

public class DateTransformer: Transformable {

    public typealias From = String
    public typealias To = Date

    public static func transformFromJSON(value: From?) -> To? {
        let formatter = DateFormatter()
        return formatter.date(from: value ?? "") // string to date
    }

    // not used
    public static func transformToJSON(value: Date?) -> String? {
        let formatter = DateFormatter()
        return formatter.string(from: value ?? Date()) // date to string
    }
}
