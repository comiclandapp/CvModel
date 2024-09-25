//
//  CVConceptModel.swift
//  CvModel
//
//  Created by Antonio Montes on 4/10/21.
//  Copyright © 2021 Antonio Montes. All rights reserved.
//

import Foundation
import SerializedSwift

/* as of Apr 10, 2021

 URL: /concept
 
 Filters
 
 format     The data format of the response takes either xml, json, or jsonp.
 field_list List of field names to include in the response. Use this if you want to reduce the size of the response payload. This filter can accept multiple arguments, each delimited with a ","
 
 Fields
 
 ✔ aliases                    List of aliases the concept is known by. A \n (newline) separates each alias. (CvModel)
 ✔ api_detail_url             URL pointing to the concept detail resource. (CvModel)
   count_of_issue_appearances Number of issues this concept appears in. (CvMisc)
 ✔ date_added                 Date the concept was added to Comic Vine. (CvModel)
 ✔ date_last_updated          Date the concept was last updated on Comic Vine. (CvModel)
 ✔ deck                       Brief summary of the concept. (CvModel)
 ✔ description                Description of the concept. (CvModel)
 ✔ id (comicvineID)           Unique ID of the concept. (CvModel)
 ✔ image                      Main image of the concept. (CvModel)
   issue_credits              List of issues this concept appears in. (CvMisc)
   movies                     Movies the concept was in. (CvMisc)
 ✔ name                       Name of the concept. (CvModel)
 ✔ site_detail_url            URL pointing to the concept on Giant Bomb. (CvModel)
   start_year                 The first year this concept appeared in comics.
   volume_credits             List of comic volumes this concept appears in.

 ✔ implemented in Core Data
 */

@objcMembers public class CvConceptModel: CvMisc {

    @Serialized("start_year")
    public var startYear: String?
    @Serialized("volume_credits")
    public var volumes: [CvVolumeModel]?

    required init() {}
}
