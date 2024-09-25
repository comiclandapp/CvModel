//
//  CvCharacterModel.swift
//  CvModel
//
//  Created by Antonio Montes on 4/4/21.
//  Copyright © 2021 Antonio Montes. All rights reserved.
//

import Foundation
import SerializedSwift

/* character as of 2016-05-11
 
Filters

   format                     The data format of the response takes either xml, json, or jsonp.
   field_list                 List of field names to include in the response. Use this if you want to reduce the size of the response payload. This filter can accept multiple arguments, each delimited with a ","
Fields

 ✔ aliases                     List of aliases the issue is known by. A \n (newline) separates each alias. (CvModel)
 ✔ api_detail_url              URL pointing to the issue detail resource. (CvModel)
   birth                       A date, if one exists, that the character was born on. Not an origin date.
   character_enemies           List of characters that are enemies with this character.
   character_friends           List of characters that are friends with this character.
 ✔ count_of_issue_appearances  Number of issues this character appears in.
   creators                    List of the real life people who created this character.
 ✔ date_added                  Date the character was added to Comic Vine. (CvModel)
 ✔ date_last_updated           Date the character was last updated on Comic Vine. (CvModel)
 ✔ deck                        Brief summary of the character. (CvModel)
 ✔ description                 Description of the character. (CvModel)
 ✔ first_appeared_in_issue     Issue where the character made its first appearance.
 ✔ gender                      Gender of the character. Available options are: Male, Female, Other
 ✔ id (comicvineID)            Unique ID of the character. (CvModel)
 ✔ image                       Main image of the character. (CvModel)
   issue_credits               List of issues this character appears in.
   issues_died_in              List of issues this character died in.
   movies                      Movies the character was in.
 ✔ name                        Name of the character. (CvModel)
 ✔ origin                      The origin of the character. Human, Alien, Robot ...etc
 ✔ powers                      List of super powers a character has.
   publisher                   The primary publisher a character is attached to.
 ✔ real_name                   Real name of the character.
 ✔ site_detail_url             URL pointing to the character on Giant Bomb. (CvModel)
   story_arc_credits           List of story arcs this character appears in.
   team_enemies                List of teams that are enemies of this character.
   team_friends                List of teams that are friends with this character.
   teams                       List of teams this character is a member of.
   volume_credits              List of comic volumes this character appears in.

 ✔ implemented in Core Data
 
 http://comicvine.gamespot.com/api/character/4005-108021/?api_key=YOUR_API_KEY&format=json
*/

@objcMembers public class CvCharacterModel: CvModel {

    @Serialized
    public var birth: String?
    @Serialized("character_enemies")
    public var characterEnemies: [CvCharacterModel]?
    @Serialized("character_friends")
    public var characterFriends: [CvCharacterModel]?
    @Serialized("count_of_issue_appearances")
    public var countOfIssueAppearances: Int?
    @Serialized
    public var creators: [CvPersonModel]?
    @Serialized("first_appeared_in_issue")
    public var firstAppearedInIssue: CvIssueModel?
    @Serialized
    public var gender: Int?
    @Serialized("issue_credits")
    public var issueCredits: [CvIssueModel]?
    @Serialized("issues_died_in")
    public var issuesDiedIn: [CvIssueModel]?
    @Serialized
    public var movies: [CvModel]?
    @Serialized
    public var origin: CvMisc?
    @Serialized
    public var powers: [CvMisc]?
    @Serialized
    public var publisher: CvPublisherModel?
    @Serialized("real_name")
    public var realName: String?
    @Serialized("story_arc_credits")
    public var storyArcs: [CvStoryarcModel]?
    @Serialized("team_enemies")
    public var teamEnemies: [CvTeamModel]?
    @Serialized("team_friends")
    public var teamFriends: [CvTeamModel]?
    @Serialized
    public var teams: [CvTeamModel]?
    @Serialized("volume_credits")
    public var volumes: [CvVolumeModel]?

    public var countOfIssueAppearances_: NSNumber? {
        get {
            return countOfIssueAppearances as NSNumber?
        }
    }

    public var gender_: NSNumber? {
        get {
            return gender as NSNumber?
        }
    }

    required init() {}
}

