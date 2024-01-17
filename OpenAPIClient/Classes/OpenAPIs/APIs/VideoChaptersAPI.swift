//
// VideoChaptersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class VideoChaptersAPI {

    /**
     Get chapters of a video
     
     - parameter id: (path) The object id, uuid or short uuid 
     - parameter xPeertubeVideoPassword: (header) Required on password protected video (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getVideoChapters(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, xPeertubeVideoPassword: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: VideoChapters?, _ error: Error?) -> Void)) -> RequestTask {
        return getVideoChaptersWithRequestBuilder(id: id, xPeertubeVideoPassword: xPeertubeVideoPassword).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get chapters of a video
     - GET /api/v1/videos/{id}/chapters
     - **PeerTube** >= 6.0
     - parameter id: (path) The object id, uuid or short uuid 
     - parameter xPeertubeVideoPassword: (header) Required on password protected video (optional)
     - returns: RequestBuilder<VideoChapters> 
     */
    open class func getVideoChaptersWithRequestBuilder(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, xPeertubeVideoPassword: String? = nil) -> RequestBuilder<VideoChapters> {
        var localVariablePath = "/api/v1/videos/{id}/chapters"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "x-peertube-video-password": xPeertubeVideoPassword?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<VideoChapters>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Replace video chapters
     
     - parameter id: (path) The object id, uuid or short uuid 
     - parameter replaceVideoChaptersRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func replaceVideoChapters(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, replaceVideoChaptersRequest: ReplaceVideoChaptersRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return replaceVideoChaptersWithRequestBuilder(id: id, replaceVideoChaptersRequest: replaceVideoChaptersRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Replace video chapters
     - PUT /api/v1/videos/{id}/chapters
     - **PeerTube** >= 6.0
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter id: (path) The object id, uuid or short uuid 
     - parameter replaceVideoChaptersRequest: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func replaceVideoChaptersWithRequestBuilder(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, replaceVideoChaptersRequest: ReplaceVideoChaptersRequest? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/videos/{id}/chapters"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: replaceVideoChaptersRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}