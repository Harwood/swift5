//
// MyNotificationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class MyNotificationsAPI {

    /**
     Update my notification settings
     
     - parameter apiV1UsersMeNotificationSettingsPutRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1UsersMeNotificationSettingsPut(apiV1UsersMeNotificationSettingsPutRequest: ApiV1UsersMeNotificationSettingsPutRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1UsersMeNotificationSettingsPutWithRequestBuilder(apiV1UsersMeNotificationSettingsPutRequest: apiV1UsersMeNotificationSettingsPutRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update my notification settings
     - PUT /api/v1/users/me/notification-settings
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter apiV1UsersMeNotificationSettingsPutRequest: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1UsersMeNotificationSettingsPutWithRequestBuilder(apiV1UsersMeNotificationSettingsPutRequest: ApiV1UsersMeNotificationSettingsPutRequest? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/users/me/notification-settings"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: apiV1UsersMeNotificationSettingsPutRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     List my notifications
     
     - parameter unread: (query) only list unread notifications (optional)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1UsersMeNotificationsGet(unread: Bool? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: NotificationListResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1UsersMeNotificationsGetWithRequestBuilder(unread: unread, start: start, count: count, sort: sort).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List my notifications
     - GET /api/v1/users/me/notifications
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter unread: (query) only list unread notifications (optional)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - returns: RequestBuilder<NotificationListResponse> 
     */
    open class func apiV1UsersMeNotificationsGetWithRequestBuilder(unread: Bool? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil) -> RequestBuilder<NotificationListResponse> {
        let localVariablePath = "/api/v1/users/me/notifications"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "unread": (wrappedValue: unread?.encodeToJSON(), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<NotificationListResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Mark all my notification as read
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1UsersMeNotificationsReadAllPost(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1UsersMeNotificationsReadAllPostWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Mark all my notification as read
     - POST /api/v1/users/me/notifications/read-all
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1UsersMeNotificationsReadAllPostWithRequestBuilder() -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/users/me/notifications/read-all"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Mark notifications as read by their id
     
     - parameter apiV1UsersMeNotificationsReadPostRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1UsersMeNotificationsReadPost(apiV1UsersMeNotificationsReadPostRequest: ApiV1UsersMeNotificationsReadPostRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1UsersMeNotificationsReadPostWithRequestBuilder(apiV1UsersMeNotificationsReadPostRequest: apiV1UsersMeNotificationsReadPostRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Mark notifications as read by their id
     - POST /api/v1/users/me/notifications/read
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter apiV1UsersMeNotificationsReadPostRequest: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1UsersMeNotificationsReadPostWithRequestBuilder(apiV1UsersMeNotificationsReadPostRequest: ApiV1UsersMeNotificationsReadPostRequest? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/users/me/notifications/read"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: apiV1UsersMeNotificationsReadPostRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
