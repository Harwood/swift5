//
// MyUserAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class MyUserAPI {

    /**
     Delete my avatar
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1UsersMeAvatarDelete(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1UsersMeAvatarDeleteWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete my avatar
     - DELETE /api/v1/users/me/avatar
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1UsersMeAvatarDeleteWithRequestBuilder() -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/users/me/avatar"
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

    /**
     Update my user avatar
     
     - parameter avatarfile: (form) The file to upload (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1UsersMeAvatarPickPost(avatarfile: URL? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiV1UsersMeAvatarPickPost200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1UsersMeAvatarPickPostWithRequestBuilder(avatarfile: avatarfile).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update my user avatar
     - POST /api/v1/users/me/avatar/pick
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter avatarfile: (form) The file to upload (optional)
     - returns: RequestBuilder<ApiV1UsersMeAvatarPickPost200Response> 
     */
    open class func apiV1UsersMeAvatarPickPostWithRequestBuilder(avatarfile: URL? = nil) -> RequestBuilder<ApiV1UsersMeAvatarPickPost200Response> {
        let localVariablePath = "/api/v1/users/me/avatar/pick"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableFormParams: [String: Any?] = [
            "avatarfile": avatarfile?.encodeToJSON(),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "multipart/form-data",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ApiV1UsersMeAvatarPickPost200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get my user used quota
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1UsersMeVideoQuotaUsedGet(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiV1UsersMeVideoQuotaUsedGet200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1UsersMeVideoQuotaUsedGetWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get my user used quota
     - GET /api/v1/users/me/video-quota-used
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - returns: RequestBuilder<ApiV1UsersMeVideoQuotaUsedGet200Response> 
     */
    open class func apiV1UsersMeVideoQuotaUsedGetWithRequestBuilder() -> RequestBuilder<ApiV1UsersMeVideoQuotaUsedGet200Response> {
        let localVariablePath = "/api/v1/users/me/video-quota-used"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ApiV1UsersMeVideoQuotaUsedGet200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get videos of my user
     
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1UsersMeVideosGet(start: Int? = nil, count: Int? = nil, sort: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: VideoListResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1UsersMeVideosGetWithRequestBuilder(start: start, count: count, sort: sort).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get videos of my user
     - GET /api/v1/users/me/videos
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - returns: RequestBuilder<VideoListResponse> 
     */
    open class func apiV1UsersMeVideosGetWithRequestBuilder(start: Int? = nil, count: Int? = nil, sort: String? = nil) -> RequestBuilder<VideoListResponse> {
        let localVariablePath = "/api/v1/users/me/videos"
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

        let localVariableRequestBuilder: RequestBuilder<VideoListResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get video imports of my user
     
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter targetUrl: (query) Filter on import target URL (optional)
     - parameter videoChannelSyncId: (query) Filter on imports created by a specific channel synchronization (optional)
     - parameter search: (query) Search in video names (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1UsersMeVideosImportsGet(start: Int? = nil, count: Int? = nil, sort: String? = nil, targetUrl: String? = nil, videoChannelSyncId: Double? = nil, search: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: VideoImportsList?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1UsersMeVideosImportsGetWithRequestBuilder(start: start, count: count, sort: sort, targetUrl: targetUrl, videoChannelSyncId: videoChannelSyncId, search: search).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get video imports of my user
     - GET /api/v1/users/me/videos/imports
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter targetUrl: (query) Filter on import target URL (optional)
     - parameter videoChannelSyncId: (query) Filter on imports created by a specific channel synchronization (optional)
     - parameter search: (query) Search in video names (optional)
     - returns: RequestBuilder<VideoImportsList> 
     */
    open class func apiV1UsersMeVideosImportsGetWithRequestBuilder(start: Int? = nil, count: Int? = nil, sort: String? = nil, targetUrl: String? = nil, videoChannelSyncId: Double? = nil, search: String? = nil) -> RequestBuilder<VideoImportsList> {
        let localVariablePath = "/api/v1/users/me/videos/imports"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": (wrappedValue: start?.encodeToJSON(), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "targetUrl": (wrappedValue: targetUrl?.encodeToJSON(), isExplode: true),
            "videoChannelSyncId": (wrappedValue: videoChannelSyncId?.encodeToJSON(), isExplode: true),
            "search": (wrappedValue: search?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<VideoImportsList>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

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
     * enum for parameter sort
     */
    public enum Sort_getMyAbuses: String, CaseIterable {
        case id = "-id"
        case createdat = "-createdAt"
        case state = "-state"
    }

    /**
     List my abuses
     
     - parameter id: (query) only list the report with this id (optional)
     - parameter state: (query)  (optional)
     - parameter sort: (query) Sort abuses by criteria (optional)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getMyAbuses(id: Int? = nil, state: AbuseStateSet? = nil, sort: Sort_getMyAbuses? = nil, start: Int? = nil, count: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetMyAbuses200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getMyAbusesWithRequestBuilder(id: id, state: state, sort: sort, start: start, count: count).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List my abuses
     - GET /api/v1/users/me/abuses
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter id: (query) only list the report with this id (optional)
     - parameter state: (query)  (optional)
     - parameter sort: (query) Sort abuses by criteria (optional)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - returns: RequestBuilder<GetMyAbuses200Response> 
     */
    open class func getMyAbusesWithRequestBuilder(id: Int? = nil, state: AbuseStateSet? = nil, sort: Sort_getMyAbuses? = nil, start: Int? = nil, count: Int? = nil) -> RequestBuilder<GetMyAbuses200Response> {
        let localVariablePath = "/api/v1/users/me/abuses"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": (wrappedValue: id?.encodeToJSON(), isExplode: true),
            "state": (wrappedValue: state?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetMyAbuses200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get my user information
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getUserInfo(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [User]?, _ error: Error?) -> Void)) -> RequestTask {
        return getUserInfoWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get my user information
     - GET /api/v1/users/me
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - returns: RequestBuilder<[User]> 
     */
    open class func getUserInfoWithRequestBuilder() -> RequestBuilder<[User]> {
        let localVariablePath = "/api/v1/users/me"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[User]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update my user information
     
     - parameter updateMe: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func putUserInfo(updateMe: UpdateMe, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return putUserInfoWithRequestBuilder(updateMe: updateMe).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update my user information
     - PUT /api/v1/users/me
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter updateMe: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func putUserInfoWithRequestBuilder(updateMe: UpdateMe) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/users/me"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateMe)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
