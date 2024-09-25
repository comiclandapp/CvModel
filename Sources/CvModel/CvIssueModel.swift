//
//  CvIssueModel.swift
//  CvModel
//
//  Created by Antonio Montes on 4/4/21.
//  Copyright © 2021 Antonio Montes. All rights reserved.
//

import Foundation
import SerializedSwift

/* issue as of 2016-05-11

 ✔ aliases                     List of aliases the issue is known by. A \n (newline) separates each alias. (CvModel)
 ✔ api_detail_url              URL pointing to the issue detail resource. (CvModel)
 ✔ character_credits           A list of characters that appear in this issue.
   characters_died_in          A list of characters that died in this issue.
   concept_credits             A list of concepts that appear in this issue.
 ✔ cover_date                  The publish date printed on the cover of an issue.
 ✔ date_added                  Date the issue was added to Comic Vine. (CvModel)
 ✔ date_last_updated           Date the issue was last updated on Comic Vine. (CvModel)
 ✔ deck                        Brief summary of the issue. (CvModel)
 ✔ description                 Description of the issue. (CvModel)
   disbanded_teams             A list of teams that disbanded in this issue.
   first_appearance_characters A list of characters in which this issue is the first appearance of the character.
   first_appearance_concepts   A list of concepts in which this issue is the first appearance of the concept.
   first_appearance_locations  A list of locations in which this issue is the first appearance of the location.
   first_appearance_objects    A list of objects in which this issue is the first appearance of the object.
   first_appearance_storyarcs  A list of storyarcs in which this issue is the first appearance of the story arc.
   first_appearance_teams      A list of teams in which this issue is the first appearance of the team.
   has_staff_review
 ✔ id (comicvineID)            Unique ID of the issue. (CvModel)
 ✔ image                       Main image of the issue. (CvModel)
 ✔ issue_number                The number assigned to the issue within the volume set.
   location_credits            List of locations that appeared in this issue.
 ✔ name                        Name of the issue. (CvModel)
   object_credits              List of objects that appeared in this issue.
 ✔ person_credits              List of people that worked on this issue.
 ✔ site_detail_url             URL pointing to the issue on Giant Bomb. (CvModel)
   store_date                  The date the issue was first sold in stores.
 ✔ story_arc_credits           List of story arcs this issue appears in.
   team_credits                List of teams that appear in this issue.
   teams_disbanded_in          List of teams that disbanded in this issue.
 ✔ volume                      The volume this issue is a part of.

 ✔ implemented in Core Data

 Spider-Man & The Human Torch Save the Universe; What Would Spider-Man Do?
 http://comicvine.gamespot.com/api/issue/4000-437484/?api_key=YOUR_API_KEY&format=xml

 http://comicvine.gamespot.com/api/issue/4000-30019/?api_key=YOUR_API_KEY&format=xml
 */

@objcMembers public class CvIssueModel: CvModel {

    @Serialized("character_credits")
    public var characters: [CvCharacterModel]?
    @Serialized("character_died_in")
    public var charactersDiedIn: [CvCharacterModel]?
    @Serialized("concept_credits")
    public var concepts: [CvConceptModel]?

    /*
        <cover_date>
            <![CDATA[ 2014-02-01 ]]>
        </cover_date>
     */
    @SerializedTransformable<DateTransformer2>("cover_date")
    public var coverDate: Date?
    //    @Serialized("cover_date")
    //    public var coverDate: String?

    @Serialized("first_appearance_characters")
    public var firstAppearanceCharacters: [CvCharacterModel]?
    @Serialized("first_appearance_concepts")
    public var firstAppearanceConcepts: [CvModel]?
    @Serialized("first_appearance_locations")
    public var firstAppearanceLocations: [CvLocationModel]?
    @Serialized("first_appearance_objects")
    public var firstAppearanceObjects: [CvModel]?
    @Serialized("first_appearance_storyarcs")
    public var firstAppearanceStoryarcs: [CvStoryarcModel]?
    @Serialized("first_appearance_teams")
    public var firstAppearanceTeams: [CvModel]?
    @Serialized("issue_number")
    public var issueNumber: String? // <issue_number>700.5</issue_number>
    @Serialized("has_staff_review")
    public var hasStaffReview: Bool?
    @Serialized("location_credits")
    public var locations: [CvLocationModel]?
    @Serialized("object_credits")
    public var objects: [CvModel]?
    @Serialized("person_credits")
    public var persons: [CvPersonModel]?

    /*
     <store_date>
         <![CDATA[ 2013-12-18 ]]>
     </store_date>
     */
    @SerializedTransformable<DateTransformer2>("store_date")
    public var storeDate: Date?
    //    @Serialized("store_date")
    //    public var storeDate: String?

    @Serialized("story_arc_credits")
    public var storyArcs: [CvStoryarcModel]?
    @Serialized("team_credits")
    public var teams: [CvTeamModel]?
    @Serialized("team_disbanded_in", alternateKey: "disbanded_teams")
    public var teamDisbandedIn: [CvTeamModel]?
    @Serialized
    public var volume: CvVolumeModel?

    required init() {}
}

public class DateTransformer2: Transformable {

    public typealias From = String
    public typealias To = Date

    public static func transformFromJSON(value: From?) -> To? {
        let _formatter = DateFormatter()
        _formatter.dateFormat = "yyyy-MM-dd"
        _formatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale
        return _formatter.date(from: value ?? "") // string to date
    }

    // not used
    public static func transformToJSON(value: Date?) -> String? {
        let formatter = DateFormatter()
        return formatter.string(from: value ?? Date()) // date to string
    }
}

/*
    <person>
        <api_detail_url>
            <![CDATA[ https://comicvine.gamespot.com/api/person/4040-1537/ ]]>
        </api_detail_url>
        <id>1537</id>
        <name>
            <![CDATA[ Joe Quesada ]]>
        </name>
        <site_detail_url>
            <![CDATA[ https://comicvine.gamespot.com/joe-quesada/4040-1537/ ]]>
        </site_detail_url>
        <role>
            <![CDATA[ other ]]>
        </role>
    </person>
 */
