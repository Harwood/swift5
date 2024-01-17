//
// VideoRatesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class VideoRatesAPI {

    /**
     Get rate of my user for a video
     
     - parameter videoId: (path) The video id 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1UsersMeVideosVideoIdRatingGet(videoId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetMeVideoRating?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1UsersMeVideosVideoIdRatingGetWithRequestBuilder(videoId: videoId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get rate of my user for a video
     - GET /api/v1/users/me/videos/{videoId}/rating
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter videoId: (path) The video id 
     - returns: RequestBuilder<GetMeVideoRating> 
     */
    open class func apiV1UsersMeVideosVideoIdRatingGetWithRequestBuilder(videoId: Int) -> RequestBuilder<GetMeVideoRating> {
        var localVariablePath = "/api/v1/users/me/videos/{videoId}/rating"
        let videoIdPreEscape = "\(APIHelper.mapValueToPathItem(videoId))"
        let videoIdPostEscape = videoIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{videoId}", with: videoIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetMeVideoRating>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Like/dislike a video
     
     - parameter id: (path) The object id, uuid or short uuid 
     - parameter xPeertubeVideoPassword: (header) Required on password protected video (optional)
     - parameter apiV1VideosIdRatePutRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1VideosIdRatePut(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, xPeertubeVideoPassword: String? = nil, apiV1VideosIdRatePutRequest: ApiV1VideosIdRatePutRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1VideosIdRatePutWithRequestBuilder(id: id, xPeertubeVideoPassword: xPeertubeVideoPassword, apiV1VideosIdRatePutRequest: apiV1VideosIdRatePutRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Like/dislike a video
     - PUT /api/v1/videos/{id}/rate
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter id: (path) The object id, uuid or short uuid 
     - parameter xPeertubeVideoPassword: (header) Required on password protected video (optional)
     - parameter apiV1VideosIdRatePutRequest: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1VideosIdRatePutWithRequestBuilder(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, xPeertubeVideoPassword: String? = nil, apiV1VideosIdRatePutRequest: ApiV1VideosIdRatePutRequest? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/videos/{id}/rate"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: apiV1VideosIdRatePutRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "x-peertube-video-password": xPeertubeVideoPassword?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}