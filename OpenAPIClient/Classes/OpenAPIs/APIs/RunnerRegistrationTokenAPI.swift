//
// RunnerRegistrationTokenAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class RunnerRegistrationTokenAPI {

    /**
     Generate registration token
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1RunnersRegistrationTokensGeneratePost(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1RunnersRegistrationTokensGeneratePostWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Generate registration token
     - POST /api/v1/runners/registration-tokens/generate
     - Generate a new runner registration token
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1RunnersRegistrationTokensGeneratePostWithRequestBuilder() -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/runners/registration-tokens/generate"
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
     * enum for parameter sort
     */
    public enum Sort_apiV1RunnersRegistrationTokensGet: String, CaseIterable {
        case createdat = "createdAt"
    }

    /**
     List registration tokens
     
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort registration tokens by criteria (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1RunnersRegistrationTokensGet(start: Int? = nil, count: Int? = nil, sort: Sort_apiV1RunnersRegistrationTokensGet? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiV1RunnersRegistrationTokensGet200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1RunnersRegistrationTokensGetWithRequestBuilder(start: start, count: count, sort: sort).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List registration tokens
     - GET /api/v1/runners/registration-tokens
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort registration tokens by criteria (optional)
     - returns: RequestBuilder<ApiV1RunnersRegistrationTokensGet200Response> 
     */
    open class func apiV1RunnersRegistrationTokensGetWithRequestBuilder(start: Int? = nil, count: Int? = nil, sort: Sort_apiV1RunnersRegistrationTokensGet? = nil) -> RequestBuilder<ApiV1RunnersRegistrationTokensGet200Response> {
        let localVariablePath = "/api/v1/runners/registration-tokens"
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

        let localVariableRequestBuilder: RequestBuilder<ApiV1RunnersRegistrationTokensGet200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Remove registration token
     
     - parameter registrationTokenId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1RunnersRegistrationTokensRegistrationTokenIdDelete(registrationTokenId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1RunnersRegistrationTokensRegistrationTokenIdDeleteWithRequestBuilder(registrationTokenId: registrationTokenId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove registration token
     - DELETE /api/v1/runners/registration-tokens/{registrationTokenId}
     - Remove a registration token. Runners that used this token for their registration are automatically removed.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter registrationTokenId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1RunnersRegistrationTokensRegistrationTokenIdDeleteWithRequestBuilder(registrationTokenId: Int) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/runners/registration-tokens/{registrationTokenId}"
        let registrationTokenIdPreEscape = "\(APIHelper.mapValueToPathItem(registrationTokenId))"
        let registrationTokenIdPostEscape = registrationTokenIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{registrationTokenId}", with: registrationTokenIdPostEscape, options: .literal, range: nil)
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