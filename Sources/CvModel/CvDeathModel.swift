//
//  CvDeathModel.swift
//  CvModel
//
//  Created by Antonio Montes on 4/5/21.
//  Copyright © 2021 Antonio Montes. All rights reserved.
//

import Foundation
import SerializedSwift

@objcMembers public class CvDeathModel: NSObject, Serializable {

    private var dateFormatter: DateFormatter

    @Serialized
    public var date: String?
    @Serialized
    public var timezone: String?
    @Serialized("timezone_type")
    public var timezoneType: String?

    public var date_: Date? {
        get {
            return dateFormatter.date(from: date!)
        }
    }

    required public override init() {
        dateFormatter = DateFormatter()
    }
}

/*
 death = {
    date = "1936-06-11 00:00:00";
    timezone = "America/Los_Angeles";
    "timezone_type" = 3;
 };
*/
