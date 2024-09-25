//
//  CvModelResponses.swift
//  CvModel
//
//  Created by Antonio Montes on 4/5/21.
//  Copyright © 2021 Antonio Montes. All rights reserved.
//

import Foundation
import SerializedSwift

public class CvModelResponse: Serializable {

    @Serialized
    var error: String?
    @Serialized
    var limit: Int?
    @Serialized
    var offset: Int?
    @Serialized("number_of_page_results")
    var numberOfPageResults: Int?
    @Serialized("number_of_total_results")
    public var numberOfTotalResults: Int?
    @Serialized("status_code")
    var statusCode: Int?
    @Serialized
    var version: String?

    required public init() {}
}

// MARK: - CvCharacterModelResponse

/*
http://comicvine.gamespot.com/api/character/4005-108021/?api_key=YOUR_API_KEY&format=json
*/

public class CvCharacterModelResponse: CvModelResponse {

    @Serialized("results")
    public var items: CvCharacterModel?

    required init() {}
}

// MARK: - CvIssueModelResponse

/*
 https://comicvine.gamespot.com/api/issue/4000-701320/?api_key=YOUR_API_KEY&format=json
 */

public class CvIssueModelResponse: CvModelResponse {

    @Serialized("results")
    public var items: CvIssueModel?

    required init() {}
}

// MARK: - CvPublisherModelResponse

/*
 http://comicvine.gamespot.com/api/publisher/4010-3662/?api_key=YOUR_API_KEY&format=json
 */

public class CvPublisherModelResponse: CvModelResponse {

    @Serialized("results")
    public var items: CvPublisherModel?

    required init() {}
}

// MARK: - CvPersonModelResponse

/*
http://comicvine.gamespot.com/api/person/4040-43332/?api_key=YOUR_API_KEY&format=json
*/

public class CvPersonModelResponse: CvModelResponse {

    @Serialized("results")
    public var items: CvPersonModel?

    required init() {}
}

// MARK: - CvStoryarcResponse

/*
 
 */

public class CvStoryarcResponse: CvModelResponse {

    @Serialized("results")
    public var items: CvStoryarcModel?

    required init() {}
}

// MARK: - CvVolumeModelResponse

/*
 https://comicvine.gamespot.com/api/volume/4050-40397/?api_key=YOUR_API_KEY&format=json
 */

public class CvVolumeModelResponse: CvModelResponse {

    @Serialized("results")
    public var items: CvVolumeModel?

    required init() {}
}

// MARK: - CvVolumesModelResponse
/*
 popular volumes
 https://comicvine.gamespot.com/volumes/

 volumes
 https://comicvine.gamespot.com/api/volumes/?api_key=YOUR_API_KEY&sort=name:asc&filter=name:YOUR_QUERY&format=json
 */

public class CvVolumesModelResponse: CvModelResponse {

    @Serialized("results")
    public var items: [CvVolumeModel]

    required init() {}
}

// MARK: - CvIssuesModelResponse
/*
 popular issues
 https://comicvine.gamespot.com/issues/

 issues
 https://comicvine.gamespot.com/api/search/?api_key=YOUR_API_KEY&sort=name:asc&resources=issue&query=YOUR_QUERY&format=json
 https://comicvine.gamespot.com/api/issues/?api_key=YOUR_API_KEY&sort=name:asc&filter=name:YOUR_QUERY&format=json
 */

public class CvIssuesModelResponse: CvModelResponse {

    @Serialized("results")
    public var items: [CvIssueModel]

    required init() {}
}

// MARK: - CvPublishersModelResponse
/*
 popular publishers
 https://comicvine.gamespot.com/publishers/

 publishers
 https://comicvine.gamespot.com/api/publishers/?api_key=YOUR_API_KEY&sort=name:asc&filter=name:YOUR_QUERY&format=json
 */

public class CvPublishersModelResponse: CvModelResponse {

    @Serialized("results")
    public var items: [CvPublisherModel]

    required init() {}
}

// MARK: - CvConceptsModelResponse
/*
 concepts

 https://comicvine.gamespot.com/api/search/?api_key=YOUR_API_KEY&resources=concept&query=YOUR_QUERY&format=json
 https://comicvine.gamespot.com/api/concepts/?api_key=YOUR_API_KEY&filter=name:YOUR_QUERY&format=json
 */

public class CvConceptsModelResponse: CvModelResponse {

    @Serialized("results")
    public var items: [CvConceptModel]

    required init() {}
}

// MARK: - CvTeamsModelResponse
/*
 teams
 
 https://comicvine.gamespot.com/api/search/?api_key=YOUR_API_KEY&resources=team&query=YOUR_QUERY&format=json
 https://comicvine.gamespot.com/api/teams/?api_key=YOUR_API_KEY&filter=name:YOUR_QUERY&format=json
 */

public class CvTeamsModelResponse: CvModelResponse {

    @Serialized("results")
    public var items: [CvTeamModel]

    required init() {}
}

// MARK: - CvThingsModelResponse
/*
 things
 
 https://comicvine.gamespot.com/api/search/?api_key=YOUR_API_KEY&resources=object&query=YOUR_QUERY&format=json
 https://comicvine.gamespot.com/api/objects/?api_key=YOUR_API_KEY&filter=name:YOUR_QUERY&format=json
 */

public class CvThingsModelResponse: CvModelResponse {

    @Serialized("results")
    public var items: [CvThingModel]

    required init() {}
}

// MARK: - CvLocationsModelResponse
/*
 locations
 
 https://comicvine.gamespot.com/api/search/?api_key=YOUR_API_KEY&resources=location&query=YOUR_QUERY&format=json
 https://comicvine.gamespot.com/api/locations/?api_key=YOUR_API_KEY&filter=name:YOUR_QUERY&format=json
 */

public class CvLocationsModelResponse: CvModelResponse {

    @Serialized("results")
    public var items: [CvLocationModel]

    required init() {}
}
