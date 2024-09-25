//
//  CVStoryarcModel.swift
//  CvModel
//
//  Created by Antonio Montes on 4/5/21.
//  Copyright © 2021 Antonio Montes. All rights reserved.
//

import Foundation
import SerializedSwift

/* story_arc as of 2016-05-11

 URL: /story_arc

 Filters

    format        The data format of the response takes either xml, json, or jsonp.
    field_list    List of field names to include in the response. Use this if you want to reduce the size of the response payload. This filter can accept multiple arguments, each delimited with a ","

 Fields

 ✔ aliases                    List of aliases the story_arc is known by. A \n (newline) seperates each alias. (CvModel)
 ✔ api_detail_url             URL pointing to the story_arc detail resource. (CvModel)
 ✔ count_of_issue_appearances Number of issues this story_arc appears in.
 ✔ date_added                 Date the story_arc was added to Comic Vine. (CvModel)
 ✔ date_last_updated          Date the story_arc was last updated on Comic Vine. (CvModel)
 ✔ deck                       Brief summary of the story_arc. (CvModel)
 ✔ description                Description of the story_arc. (CvModel)
 ✔ first_appeared_in_issue    Issue where the story_arc made its first appearance.
 ✔ id (comicvineID)           Unique ID of the story_arc. (CvModel)
 ✔ image                      Main image of the story_arc. (CvModel)
 ✔ issues                     List of issues included in this story_arc. (CVMisc)
   movies                     Movies the story_arc was in. (CVMisc)
 ✔ name                       Name of the story_arc. (CvModel)
 ✔ publisher                  The primary publisher a story_arc is attached to.
 ✔ site_detail_url            URL pointing to the story_arc on Giant Bomb. (CvModel)

 ✔ implemented in Core Data
 
 https://comicvine.gamespot.com/api/story_arc/4045-60033/?api_key=YOUR_API_KEY&format=json
 */

@objcMembers public class CvStoryarcModel: CvMisc {

    @Serialized
    public var episodes: [CvModel]?
    @Serialized("first_appeared_in_issue")
    public var firstAppearedInIssue: [CvIssueModel]?
    @Serialized
    public var publisher: CvPublisherModel?

    required init() {}
}
