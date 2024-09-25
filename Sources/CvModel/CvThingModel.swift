//
//  CvThingModel.swift
//  CvModel
//
//  Created by Antonio Montes on 4/11/21.
//

import Foundation
import SerializedSwift

/* object as of Apr 11, 2021

 https://comicvine.gamespot.com/api/documentation#toc-0-16
 https://comicvine.gamespot.com/things/
 https://comicvine.gamespot.com/s-h-i-e-l-d-helicarrier/4055-40700/
 
 URL: /object

 Filters

 format    The data format of the response takes either xml, json, or jsonp.
 field_list    List of field names to include in the response. Use this if you want to reduce the size of the response payload. This filter can accept multiple arguments, each delimited with a ","

 Fields

 ✔ aliases                    List of aliases the team is known by. A \n (newline) separates each alias. (CvModel)
 ✔ api_detail_url             URL pointing to the team detail resource. (CvModel)
   count_of_issue_appearances Number of issues this object appears in. (CvMisc)
 ✔ date_added                 Date the team was added to Comic Vine. (CvModel)
 ✔ date_last_updated          Date the team was last updated on Comic Vine. (CvModel)
 ✔ deck                       Brief summary of the team. (CvModel)
 ✔ description                Description of the team. (CvModel)
   first_appeared_in_issue    Issue where the object made its first appearance.
 ✔ id  (comicvineID)          Unique ID of the team. (CvModel)
 ✔ image                      Main image of the team. (CvModel)
   issue_credits              List of issues this object appears in. (CvMisc)
   movies                     Movies the object was in. (CvMisc)
 ✔ name                       Name of the team. (CvModel)
 ✔ site_detail_url            URL pointing to the team on Giant Bomb. (CvModel)
   start_year                 The first year this object appeared in comics.
   story_arc_credits          List of story arcs this object appears in.
   volume_credits             List of comic volumes this object appears in.

 ✔ implemented in Core Data
*/

@objcMembers public class CvThingModel: CvMisc {

    @Serialized("first_appeared_in_issue")
    public var firstAppearedInIssue: CvIssueModel?
    @Serialized("start_year")
    public var startYear: String?
    @Serialized("story_arc_credits")
    public var storyArcs: [CvStoryarcModel]?
    @Serialized("volume_credits")
    public var volumes: [CvVolumeModel]?

    required init() {}
}
