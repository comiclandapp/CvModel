//
//  CVPublisherModel.swift
//  CvModel
//
//  Created by Antonio Montes on 4/5/21.
//  Copyright © 2021 Antonio Montes. All rights reserved.
//

import Foundation
import SerializedSwift

/* publisher as of 2016-05-11

 ✔ aliases           List of aliases the publisher is known by. A \n (newline) separates each alias. (CvModel)
 ✔ api_detail_url    URL pointing to the publisher detail resource. (CvModel)
   characters        Characters related to the publisher.
 ✔ date_added        Date the publisher was added to Comic Vine. (CvModel)
 ✔ date_last_updated Date the publisher was last updated on Comic Vine. (CvModel)
 ✔ deck              Brief summary of the publisher. (CvModel)
 ✔ description       Description of the publisher. (CvModel)
 ✔ id (comicvineID)  Unique ID of the publisher. (CvModel)
 ✔ image             Main image of the publisher. (CvModel)
 ✔ location_address  Street address of the publisher.
 ✔ location_city     City the publisher resides in.
 ✔ location_state    State the publisher resides in.
 ✔ name              Name of the publisher.
 ✔ site_detail_url   URL pointing to the publisher on Giant Bomb. (CvModel)
   story_arcs        List of story arcs tied to this publisher.
   teams             List of teams this publisher is a member of.
   volumes           List of volumes this publisher has put out.

 ✔ implemented in Core Data
 
 http://comicvine.gamespot.com/api/publisher/4010-3662/?api_key=YOUR_API_KEY&format=json
*/

@objcMembers public class CvPublisherModel: CvModel {

    @Serialized
    public var characters: [CvCharacterModel]?
    @Serialized("location_address")
    public var locationAddress: String?
    @Serialized("location_city")
    public var locationCity: String?
    @Serialized("location_state")
    public var locationState: String?
    @Serialized("story_arcs")
    public var storyArcs: [CvStoryarcModel]?
    @Serialized
    public var teams: [CvTeamModel]?
    @Serialized
    public var volumes: [CvVolumeModel]?

    required init() {}
}
