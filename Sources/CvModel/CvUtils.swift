//
//  CvUtils.swift
//  CvModel
//
//  Created by Antonio Montes on 4/6/21.
//

import Foundation

public enum CvRequestType: Int {

    case DETAILS_FOR_VOLUME_WITH_CV_ID
    case DETAILS_FOR_ISSUE_WITH_CV_ID
    case DETAILS_FOR_PUBLISHER_WITH_CV_ID
    case DETAILS_FOR_PERSON_WITH_CV_ID
    case DETAILS_FOR_CHARACTER_WITH_CV_ID
    case DETAILS_FOR_LOCATION_WITH_CV_ID
    case DETAILS_FOR_TEAM_WITH_CV_ID
    case DETAILS_FOR_THING_WITH_CV_ID
    case DETAILS_FOR_STORYARC_WITH_CV_ID
    
    case ISSUES_FOR_VOLUME_WITH_CV_ID

    case SEARCH_VOLUMES_FOR_TERM
    case SEARCH_ISSUES_FOR_TERM
    case SEARCH_PUBLISHERS_FOR_TERM
    case SEARCH_CONCEPTS_FOR_TERM
    case SEARCH_TEAMS_FOR_TERM

    // TODO: fix or find out why this doesn't work
    case SEARCH_ISSUES_FOR_TERM_ALT
    case SEARCH_PUBLISHERS_FOR_TERM_ALT
    case SEARCH_CONCEPTS_FOR_TERM_ALT
    case SEARCH_TEAMS_FOR_TERM_ALT
}

public class CvUtils: NSObject {

    public func buildQuery(requestType: CvRequestType,
                           searchTermOrCvID: String,
                           apiKey: String = "",
                           offset: Int = 0,
                           limit: Int = 100,
                           format: String = "json",
                           popMode: Bool = false) -> String {

        var cvApiKey = apiKey

        if cvApiKey.isEmpty {
            guard let _cvApiKey = UserDefaults.standard.string(forKey: CvConstants.cvApiKey) else {
                print("No Comic Vine key!")
                return ""
            }
            cvApiKey = _cvApiKey
        }

        var sb = CvConstants.cvAPI
        switch (requestType) {

            case .DETAILS_FOR_VOLUME_WITH_CV_ID:

                /*
                 https://comicvine.gamespot.com/api/volume/4050-CV_VOLUME_ID/?api_key=YOUR_API_KEY&format=json
                */

                sb.append("volume/4050-")
                sb.append(searchTermOrCvID)
                sb.append("/?api_key=")
                sb.append(cvApiKey)

            case .DETAILS_FOR_ISSUE_WITH_CV_ID:

                /*
                 https://comicvine.gamespot.com/api/issue/4000-CV_ISSUE_ID/?api_key=YOUR_API_KEY&format=json
                */

                sb.append("issue/4000-")
                sb.append(searchTermOrCvID)
                sb.append("/?api_key=")
                sb.append(cvApiKey)

            case .DETAILS_FOR_PUBLISHER_WITH_CV_ID:

                /*
                 https://comicvine.gamespot.com/api/publisher/4010-CV_PUBLISHER_ID/?api_key=YOUR_API_KEY&format=json
                */

                sb.append("publisher/4010-")
                sb.append(searchTermOrCvID)
                sb.append("/?api_key=")
                sb.append(cvApiKey)

            case .DETAILS_FOR_PERSON_WITH_CV_ID:

                /*
                 https://comicvine.gamespot.com/api/person/4040-CV_PERSON_ID/?api_key=YOUR_API_KEY&format=json
                */

                sb.append("person/4040-");
                sb.append(searchTermOrCvID)
                sb.append("/?api_key=")
                sb.append(cvApiKey)

            case .DETAILS_FOR_CHARACTER_WITH_CV_ID:

                /*
                 https://comicvine.gamespot.com/api/character/4005-CV_CHARACTER_ID/?api_key=YOUR_API_KEY&format=json
                */

                sb.append("character/4005-")
                sb.append(searchTermOrCvID)
                sb.append("/?api_key=")
                sb.append(cvApiKey)

            case .DETAILS_FOR_LOCATION_WITH_CV_ID:

                /*
                 https://comicvine.gamespot.com/api/location/4020-CV_LOCATION_ID/?api_key=YOUR_API_KEY&format=json
                */

                sb.append("location/4020-")
                sb.append(searchTermOrCvID)
                sb.append("/?api_key=")
                sb.append(cvApiKey)

            case .DETAILS_FOR_TEAM_WITH_CV_ID:

                /*
                 https://comicvine.gamespot.com/api/team/4060-CV_TEAM_ID/?api_key=YOUR_API_KEY&format=json
                */

                sb.append("team/4060-")
                sb.append(searchTermOrCvID)
                sb.append("/?api_key=")
                sb.append(cvApiKey)

            case .DETAILS_FOR_THING_WITH_CV_ID:
            
                /*
                 https://comicvine.gamespot.com/api/object/4055-CV_THING_ID/?api_key=YOUR_API_KEY&format=json
                */

                sb.append("object/4055-")
                sb.append(searchTermOrCvID)
                sb.append("/?api_key=")
                sb.append(cvApiKey)

            case .DETAILS_FOR_STORYARC_WITH_CV_ID:

                /*
                 https://comicvine.gamespot.com/api/story_arc/4045-CV_STORYARC_ID/?api_key=YOUR_API_KEY&format=json
                */

                sb.append("story_arc/4045-")
                sb.append(searchTermOrCvID)
                sb.append("/?api_key=")
                sb.append(cvApiKey)

            case .ISSUES_FOR_VOLUME_WITH_CV_ID:

                /*
                 https://comicvine.gamespot.com/api/issues/?api_key=YOUR_API_KEY&filter=volume:YOUR_QUERY&format=json
                */

                sb.append("issues")
                sb.append("/?api_key=")
                sb.append(cvApiKey);
                sb.append("&filter=volume:")
                sb.append(searchTermOrCvID)

            case .SEARCH_VOLUMES_FOR_TERM:

                /*
                 https://comicvine.gamespot.com/api/volumes/?api_key=YOUR_API_KEY&sort=name:asc&filter=name:YOUR_QUERY&format=json
                */

                sb.append("volumes")
                sb.append("/?api_key=")
                sb.append(cvApiKey)
                if offset > 0 {
                    sb.append("&offset=")
                    sb.append(String(offset))
                }
                if limit != 100 {
                    sb.append("&limit=")
                    sb.append(String(limit))
                }
                sb.append("&sort=")
                sb.append(popMode ? "issue_number:asc" : "name:asc")
                sb.append("&filter=name:")
                sb.append(searchTermOrCvID)

            case .SEARCH_ISSUES_FOR_TERM:

                /*
                 https://comicvine.gamespot.com/api/search/?api_key=YOUR_API_KEY&limit=200&sort=name:asc&resources=issue&query=YOUR_QUERY&format=json
                */

                sb.append("search")
                sb.append("/?api_key=")
                sb.append(cvApiKey);
                if offset > 0 {
                    sb.append("&offset=")
                    sb.append(String(offset))
                }
                if limit != 100 {
                    sb.append("&limit=")
                    sb.append(String(limit))
                }
                sb.append("&sort=")
                sb.append(popMode ? "issue_number:asc" : "name:asc")
                sb.append("&resources=")
                sb.append("issue")
                sb.append("&query=")
                sb.append(searchTermOrCvID)

            case .SEARCH_ISSUES_FOR_TERM_ALT:

                /*
                 https://comicvine.gamespot.com/api/issues/?api_key=YOUR_API_KEY&sort=name:asc&filter=name:YOUR_QUERY&format=json
                */

                sb.append("issues")
                sb.append("/?api_key=")
                sb.append(cvApiKey)
                if offset > 0 {
                    sb.append("&offset=")
                    sb.append(String(offset))
                }
                if limit != 100 {
                    sb.append("&limit=")
                    sb.append(String(limit))
                }
                sb.append("&sort=")
                sb.append(popMode ? "issue_number:asc" : "name:asc")
                sb.append("&filter=name:")
                sb.append(searchTermOrCvID)


            case .SEARCH_PUBLISHERS_FOR_TERM:

                /*
                 https://comicvine.gamespot.com/api/publishers/?api_key=YOUR_API_KEY&sort=name:asc&filter=name:YOUR_QUERY&format=json
                */

                sb.append("publishers")
                sb.append("/?api_key=")
                sb.append(cvApiKey)
                if offset > 0 {
                    sb.append("&offset=")
                    sb.append(String(offset))
                }
                if limit != 100 {
                    sb.append("&limit=")
                    sb.append(String(limit))
                }
                sb.append("&sort=")
                sb.append(popMode ? "issue_number:asc" : "name:asc")
                sb.append("&filter=name:")
                sb.append(searchTermOrCvID)

            case .SEARCH_PUBLISHERS_FOR_TERM_ALT:

                /*
                 https://comicvine.gamespot.com/api/search/?api_key=YOUR_API_KEY&limit=200&sort=name:asc&resources=publisher&query=YOUR_QUERY&format=json
                */

                sb.append("search")
                sb.append("/?api_key=")
                sb.append(cvApiKey);
//                if offset > 0 {
//                    sb.append("&offset=")
//                    sb.append(String(offset))
//                }
//                if limit != 100 {
//                    sb.append("&limit=")
//                    sb.append(String(limit))
//                }
                sb.append("&sort=")
                sb.append("name:asc")
                sb.append("&resources=")
                sb.append("publisher")
                sb.append("&query=")
                sb.append(searchTermOrCvID)

            case .SEARCH_CONCEPTS_FOR_TERM:

                /*
                 https://comicvine.gamespot.com/api/concepts/?api_key=YOUR_API_KEY&limt=5&sort=name:asc&filter=name:YOUR_QUERY&format=json
                */

                sb.append("concepts")
                sb.append("/?api_key=")
                sb.append(cvApiKey)
                if offset > 0 {
                    sb.append("&offset=")
                    sb.append(String(offset))
                }
                if limit != 100 {
                    sb.append("&limit=")
                    sb.append(String(limit))
                }
                sb.append("&sort=")
                sb.append(popMode ? "issue_number:asc" : "name:asc")
                sb.append("&filter=name:")
                sb.append(searchTermOrCvID)

            case .SEARCH_CONCEPTS_FOR_TERM_ALT:

                /*
                 https://comicvine.gamespot.com/api/search/?api_key=YOUR_API_KEY&limit=5&resources=concept&query=YOUR_QUERY&format=json
                */

                sb.append("search")
                sb.append("/?api_key=")
                sb.append(cvApiKey);
                sb.append("&sort=")
                sb.append("name:asc")
                sb.append("&resources=")
                sb.append("concept")
                sb.append("&query=")
                sb.append(searchTermOrCvID)

            case .SEARCH_TEAMS_FOR_TERM:

                /*
                 https://comicvine.gamespot.com/api/teams/?api_key=YOUR_API_KEY&filter=name:YOUR_QUERY&format=json
                */

                sb.append("teams")
                sb.append("/?api_key=")
                sb.append(cvApiKey)
                if offset > 0 {
                    sb.append("&offset=")
                    sb.append(String(offset))
                }
                if limit != 100 {
                    sb.append("&limit=")
                    sb.append(String(limit))
                }
                sb.append("&sort=")
                sb.append(popMode ? "issue_number:asc" : "name:asc")
                sb.append("&filter=name:")
                sb.append(searchTermOrCvID)

            case .SEARCH_TEAMS_FOR_TERM_ALT:

                /*
                 https://comicvine.gamespot.com/api/search/?api_key=YOUR_API_KEY&resources=team&query=YOUR_QUERY&format=json
                 */

                sb.append("search")
                sb.append("/?api_key=")
                sb.append(cvApiKey);
//                if offset > 0 {
//                    sb.append("&offset=")
//                    sb.append(String(offset))
//                }
//                if limit != 100 {
//                    sb.append("&limit=")
//                    sb.append(String(limit))
//                }
                sb.append("&sort=")
                sb.append("name:asc")
                sb.append("&resources=")
                sb.append("team")
                sb.append("&query=")
                sb.append(searchTermOrCvID)
        }
        sb.append("&format=")
        sb.append(format)
        return sb;
    }
}
