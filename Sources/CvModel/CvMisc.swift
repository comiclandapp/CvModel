//
//  CVMisc.swift
//  CvModel
//
//  Created by Antonio Montes on 4/10/21.
//  Copyright © 2021 Antonio Montes. All rights reserved.
//

import Foundation
import SerializedSwift

/*
   count_of_issue_appearances Number of issues this X appears in. (CvMisc)
   issue_credits              List of issues this X appears in. (CvMisc)
   movies                     Movies the X was in. (CvMisc)
 */

@objcMembers public class CvMisc: CvModel {

    @Serialized("count_of_issue_appearances")
    public var countOfIssueAppearances: Int?
    @Serialized("issue_credits")
    public var issues: [CvIssueModel]?
    @Serialized
    var movies: [CvModel]?

    public var countOfIsssueAppearances_: NSNumber? {
        get {
            return countOfIssueAppearances as NSNumber?
        }
    }

    required init() {}
}
