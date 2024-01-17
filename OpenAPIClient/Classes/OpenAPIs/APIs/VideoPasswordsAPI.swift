//
// VideoPasswordsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class VideoPasswordsAPI {

    /**
     List video passwords
     
     - parameter id: (path) The object id, uuid or short uuid 
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1VideosIdPasswordsGet(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, start: Int? = nil, count: Int? = nil, sort: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: VideoPasswordList?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1VideosIdPasswordsGetWithRequestBuilder(id: id, start: start, count: count, sort: sort).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List video passwords
     - GET /api/v1/videos/{id}/passwords
     - **PeerTube** >= 6.0
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter id: (path) The object id, uuid or short uuid 
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - returns: RequestBuilder<VideoPasswordList> 
     */
    open class func apiV1VideosIdPasswordsGetWithRequestBuilder(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, start: Int? = nil, count: Int? = nil, sort: String? = nil) -> RequestBuilder<VideoPasswordList> {
        var localVariablePath = "/api/v1/videos/{id}/passwords"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": (wrappedValue: start?.encodeToJSON(), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<VideoPasswordList>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update video passwords
     
     - parameter id: (path) The object id, uuid or short uuid 
     - parameter apiV1VideosIdPasswordsPutRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1VideosIdPasswordsPut(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, apiV1VideosIdPasswordsPutRequest: ApiV1VideosIdPasswordsPutRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1VideosIdPasswordsPutWithRequestBuilder(id: id, apiV1VideosIdPasswordsPutRequest: apiV1VideosIdPasswordsPutRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update video passwords
     - PUT /api/v1/videos/{id}/passwords
     - **PeerTube** >= 6.0
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter id: (path) The object id, uuid or short uuid 
     - parameter apiV1VideosIdPasswordsPutRequest: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1VideosIdPasswordsPutWithRequestBuilder(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, apiV1VideosIdPasswordsPutRequest: ApiV1VideosIdPasswordsPutRequest? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/videos/{id}/passwords"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: apiV1VideosIdPasswordsPutRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete a video password
     
     - parameter id: (path) The object id, uuid or short uuid 
     - parameter videoPasswordId: (path) The video password id 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1VideosIdPasswordsVideoPasswordIdDelete(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, videoPasswordId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1VideosIdPasswordsVideoPasswordIdDeleteWithRequestBuilder(id: id, videoPasswordId: videoPasswordId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete a video password
     - DELETE /api/v1/videos/{id}/passwords/{videoPasswordId}
     - **PeerTube** >= 6.0
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter id: (path) The object id, uuid or short uuid 
     - parameter videoPasswordId: (path) The video password id 
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1VideosIdPasswordsVideoPasswordIdDeleteWithRequestBuilder(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, videoPasswordId: Int) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/videos/{id}/passwords/{videoPasswordId}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let videoPasswordIdPreEscape = "\(APIHelper.mapValueToPathItem(videoPasswordId))"
        let videoPasswordIdPostEscape = videoPasswordIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{videoPasswordId}", with: videoPasswordIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
