//
//  CvVolumeModel.swift
//  CvModel
//
//  Created by Antonio Montes on 4/4/21.
//  Copyright © 2021 Antonio Montes. All rights reserved.
//

import Foundation
import SerializedSwift

/*
 URL: /volume

 Filters
    format        The data format of the response takes either xml, json, or jsonp.
     field_list    List of field names to include in the response. Use this if you want to reduce the size of the response payload. This filter can accept multiple arguments, each delimited with a ","
 Fields

 ✔ aliases           List of aliases the volume is known by. A \n (newline) seperates each alias. (CvModel)
 ✔ api_detail_url    URL pointing to the volume detail resource. (CvModel)
   character_credits A list of characters that appear in this volume.
   concept_credits   A list of concepts that appear in this volume.
 ✔ count_of_issues   Number of issues included in this volume. (CvModel)
 ✔ date_added        Date the volume was added to Comic Vine. (CvModel)
 ✔ date_last_updated Date the volume was last updated on Comic Vine. (CvModel)
 ✔ deck              Brief summary of the volume. (CvModel)
 ✔ description       Description of the volume. (CvModel)
 ✔ first_issue       The first issue in this volume. (CvModel)
 ✔ id (comicvineID)  Unique ID of the volume. (CvModel)
 ✔ image             Main image of the volume. (CvModel)
 ✔ last_issue        The last issue in this volume.
   location_credits  List of locations that appeared in this volume.
 ✔ name              Name of the volume. (CvModel)
   object_credits    List of objects that appeared in this volume.
   person_credits    List of people that worked on this volume.
 ✔ publisher         The primary publisher a volume is attached to.
 ✔ site_detail_url   URL pointing to the volume on Giant Bomb. (CvModel)
 ✔ start_year        The first year this volume appeared in comics.
   team_credits      List of teams that appear in this volume.

 ✔ implemented in Core Data

 https://comicvine.gamespot.com/api/volume/4050-40397/?api_key=YOUR_API_KEY&format=json

 */

@objcMembers public class CvVolumeModel: CvModel {

    @Serialized(alternateKey:"character_credits")
    public var characters: [CvCharacterModel]?
    @Serialized("concept_credits")
    public var concepts: [CvModel]?
    @Serialized("count_of_issues")
    public var countOfIssues: Int?
    @Serialized("first_issue")
    public var firstIssue: CvIssueModel?
    @Serialized
    public var issues: [CvIssueModel]?
    @Serialized("last_issue")
    public var lastIssue: CvIssueModel?
    @Serialized("location_credits")
    public var locations: [CvLocationModel]?
    @Serialized("object_credits")
    public var objects: [CvModel]?
    @Serialized("person_credits")
    public var persons: [CvPersonModel]?
    @Serialized
    public var publisher: CvPublisherModel?
    @Serialized("start_year")
    public var startYear: String?
    @Serialized("team_credits")
    public var teams: [CvTeamModel]?

    public var countOfIssues_: NSNumber? {
        get {
            return countOfIssues as NSNumber?
        }
    }

    public var publisher_name: String? {
        get {
            return (publisher?.name ?? nil)
        }
    }

    required init() {}
}

