//
//  CvTeamModel.swift
//  CvModel
//
//  Created by Antonio Montes on 4/10/21.
//

import Foundation
import SerializedSwift

/* as of Apr 10, 2021

 https://comicvine.gamespot.com/api/documentation#toc-0-33
 
 URL: /team

 Filters

   format     The data format of the response takes either xml, json, or jsonp.
   field_list List of field names to include in the response. Use this if you want to reduce the size of the response payload. This filter can accept multiple arguments, each delimited with a ","

 Fields

 ✔ aliases                    List of aliases the team is known by. A \n (newline) separates each alias. (CvModel)
 ✔ api_detail_url             URL pointing to the team detail resource. (CvModel)
   character_enemies          List of characters that are enemies with this team.
   character_friends          List of characters that are friends with this team.
   characters                 Characters related to the team.
   count_of_issue_appearances Number of issues this team appears in. (CvMisc)
   count_of_team_members      Number of team members in this team.
 ✔ date_added                 Date the team was added to Comic Vine. (CvModel)
 ✔ date_last_updated          Date the team was last updated on Comic Vine. (CvModel)
 ✔ deck                       Brief summary of the team. (CvModel)
 ✔ description                Description of the team. (CvModel)
   disbanded_in_issues        List of issues this team disbanded in.
   first_appeared_in_issue    Issue where the team made its first appearance.
 ✔ id  (comicvineID)          Unique ID of the team. (CvModel)
 ✔ image                      Main image of the team. (CvModel)
   issue_credits              List of issues this team appears in. (CVMisc)
   issues_disbanded_in        List of issues this team disbanded in.
   movies                     Movies the team was in. (CvMisc)
 ✔ name                       Name of the team. (CvModel)
   publisher                  The primary publisher a team is attached to.
 ✔ site_detail_url            URL pointing to the team on Giant Bomb. (CvModel)
   story_arc_credits          List of story arcs this team appears in.
   volume_credits             List of comic volumes this team appears in.

 ✔ implemented in Core Data
 
 https://comicvine.gamespot.com/heralds-of-galactus/4060-40462/
 https://comicvine.gamespot.com/teams/
 https://comicvine.gamespot.com/x-men/4060-3173/
 */

@objcMembers public class CvTeamModel: CvMisc {

    @Serialized("character_enemies")
    public var characterEnemies: [CvCharacterModel]?
    @Serialized("character_friends")
    public var characterFriends: [CvCharacterModel]?
    @Serialized
    public var characters: [CvCharacterModel]?
    @Serialized("count_of_team_members")
    public var countOfTeamMembers: Int?
    @Serialized("disbanded_in_issues", alternateKey: "issues_disbanded_in")
    public var disbandedInIssues: [CvIssueModel]?
    @Serialized
    public var publisher: [CvPublisherModel]?
    @Serialized("story_arc_credits")
    public var storyArcs: [CvStoryarcModel]?
    @Serialized("volume_credits")
    public var volumes: [CvVolumeModel]?

    public var countOfTeamMembers_: NSNumber? {
        get {
            return countOfTeamMembers as NSNumber?
        }
    }

    required init() {}
}
