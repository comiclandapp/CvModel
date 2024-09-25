//
//  CvLocationModel.swift
//  CvModel
//
//  Created by Antonio Montes on 4/10/21.
//  Copyright © 2021 Antonio Montes. All rights reserved.
//

import Foundation
import SerializedSwift

/* as of April 10, 2021
 
 https://comicvine.gamespot.com/api/documentation#toc-0-12
 https://comicvine.gamespot.com/locations/
 
 URL: /location

 Filters

 format    The data format of the response takes either xml, json, or jsonp.
 field_list    List of field names to include in the response. Use this if you want to reduce the size of the response payload. This filter can accept multiple arguments, each delimited with a ","

 Fields

 ✔ aliases                    List of aliases the location is known by. A \n (newline) separates each alias. (CvModel)
 ✔ api_detail_url             URL pointing to the location detail resource. (CvModel)
   count_of_issue_appearances Number of issues this location appears in. (CvMisc)
 ✔ date_added                 Date the location was added to Comic Vine. (CvModel)
 ✔ date_last_updated          Date the location was last updated on Comic Vine. (CvModel)
 ✔ deck                       Brief summary of the location. (CvModel)
 ✔ description                Description of the location. (CvModel)
   first_appeared_in_issue    Issue where the location made its first appearance. (CvThingModel)
 ✔ id (comicvineID)           Unique ID of the location. (CvModel)
 ✔ image                      Main image of the location. (CvModel)
   issue_credits              List of issues this location appears in. (CvMisc)
   movies                     Movies the location was in. (CvMisc)
 ✔ name                       Name of the location. (CvModel)
 ✔ site_detail_url            URL pointing to the location on Giant Bomb. (CvModel)
   start_year                 The first year this location appeared in comics. (CvThingModel)
   story_arc_credits          List of story arcs this location appears in. (CvThingModel)
   volume_credits             List of comic volumes this location appears in. (CvThingModel)

 ✔ implemented in Core Data
 */

@objc public class CvLocationModel: CvThingModel {

    required init() {}
}
