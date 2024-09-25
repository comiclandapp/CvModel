//
//  CvModel.swift
//  CvModel
//
//  Created by Antonio Montes on 4/4/21.
//  Copyright © 2021 Antonio Montes. All rights reserved.
//

import Foundation
import SerializedSwift

/*
 ✔ aliases                    List of aliases the X is known by. A \n (newline) separates each alias. (CvModel)
 ✔ api_detail_url             URL pointing to the X detail resource. (CvModel)
 ✔ date_added                 Date the X was added to Comic Vine. (CvModel)
 ✔ date_last_updated          Date the X was last updated on Comic Vine. (CvModel)
 ✔ deck                       Brief summary of the X. (CvModel)
 ✔ description                Description of the X. (CvModel)
 ✔ id  (comicvineID)          Unique ID of the X. (CvModel)
 ✔ image                      Main image of the X. (CvModel)
 ✔ name                       Name of the X. (CvModel)
 ✔ site_detail_url            URL pointing to the X on Giant Bomb. (CvModel)
 */

@objcMembers public class CvModel: NSObject, Serializable {

    @Serialized("id")
    public var comicvineID: Int

    @Serialized
    public var aliases: String?

    @Serialized("api_detail_url")
    public var apiDetailUrl: String?

    @SerializedTransformable<DateTransformer>("date_added")
    public var dateAdded: Date? // <date_added>2013-12-17 00:02:40</date_added>
    //    @Serialized("date_added")
    //    public var dateAdded: String?
    @SerializedTransformable<DateTransformer>("date_last_updated")
    public var dateLastUpdated: Date? // <date_last_updated>2014-01-22 07:50:08</date_last_updated>
    //    @Serialized("date_last_updated")
    //    public var dateLastUpdated: String?

    @Serialized
    public var deck: String?
    @Serialized("description")
    public var description_: String?
    @Serialized
    public var image: CvImageModel?
    @Serialized
    public var name: String?
    @Serialized("site_detail_url")
    public var siteDetailUrl: String?

    public var aliases_: [String]? {
        get {
            return aliases?.components(separatedBy: "\n")
        }
    }

    required public override init() {}
}
