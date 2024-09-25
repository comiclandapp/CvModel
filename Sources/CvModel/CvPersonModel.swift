//
//  CvPersonModel.swift
//  CvModel
//
//  Created by Antonio Montes on 4/4/21.
//  Copyright © 2021 Antonio Montes. All rights reserved.
//

import Foundation
import SerializedSwift

/* person as of 2016-05-11

 ✔ aliases                      List of aliases the person is known by. A \n (newline) seperates each alias. (CvModel)
 ✔ api_detail_url               URL pointing to the person detail resource. (CvModel)
 ✔ birth                        A date, if one exists, that the person was born on. Not an origin date.
 ✔ count_of_issue_appearances   Number of issues this person appears in.
 ✔ country                      Country the person resides in.
   created_characters           Comic characters this person created.
 ✔ date_added                   Date the person was added to Comic Vine. (CvModel)
 ✔ date_last_updated            Date the person was last updated on Comic Vine. (CvModel)
 ✔ death                        Date this person died on.
 ✔ deck                         Brief summary of the person. (CvModel)
 ✔ description                  Description of the person. (CvModel)
   email                        The email of this person.
 ✔ gender                       Gender of the person. Available options are: Male, Female, Other
 ✔ hometown                     City or town the person resides in.
 ✔ id (comicvineID)             Unique ID of the person. (CvModel)
 ✔ image                        Main image of the person. (CvModel)
   issue_credits                List of issues this person appears in.
 ✔ name                         Name of the person. (CvModel)
 ✔ site_detail_url              URL pointing to the person on Giant Bomb. (CvModel)
   story_arc_credits            List of story arcs this person appears in.
   volume_credits               List of comic volumes this person appears in.
   website                      URL to the person website.
 
 ✔ implemented in Core Data

 4040-1537: Joe Quesada
 https://comicvine.gamespot.com/api/person/4040-1537/?api_key=YOUR_API_KEY&format=xml
 
 4040-52884: Fiona Staples
 http://comicvine.gamespot.com/api/person/4040-52884/?api_key=YOUR_API_KEY&format=xml
 https://comicvine.gamespot.com/api/person/4040-34562/?api_key=YOUR_API_KEY&format=json&fieldList=id,name,deck,description,image,birth,count_of_issue_appearances,country,death,email,gender,hometown,website
*/

@objcMembers public class CvPersonModel: CvModel {

    @Serialized
    public var birth: String? // birth = "1906-01-22 00:00:00"
    @Serialized("count_of_isssue_appearances")
    public var countOfIsssueAppearances: Int?
    @Serialized
    public var country: String?
    @Serialized("created_characters")
    public var characters: [CvCharacterModel]?
    @Serialized
    public var death: CvDeathModel?
    @Serialized
    public var email: String?
    @Serialized
    public var gender: Int?
    @Serialized("hometown")
    public var city: String?
    @Serialized
    public var issues: [CvIssueModel]?
    @Serialized("story_arc_credits")
    public var storyArcs: [CvStoryarcModel]?
    @Serialized("volume_credits")
    public var volumes: [CvVolumeModel]?
    @Serialized
    public var role: String? // role in a particular issue
    @Serialized
    public var twitter: String?
    @Serialized
    public var website: String?

    public var countOfIsssueAppearances_: NSNumber? {
        get {
            return countOfIsssueAppearances as NSNumber?
        }
    }

    public var gender_: NSNumber? {
        get {
            return gender as NSNumber?
        }
    }

    required init() {}
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
