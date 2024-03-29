//
// InstanceRedundancyAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class InstanceRedundancyAPI {

    /**
     Update a server redundancy policy
     
     - parameter host: (path) server domain to mirror 
     - parameter apiV1ServerRedundancyHostPutRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1ServerRedundancyHostPut(host: String, apiV1ServerRedundancyHostPutRequest: ApiV1ServerRedundancyHostPutRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1ServerRedundancyHostPutWithRequestBuilder(host: host, apiV1ServerRedundancyHostPutRequest: apiV1ServerRedundancyHostPutRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update a server redundancy policy
     - PUT /api/v1/server/redundancy/{host}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter host: (path) server domain to mirror 
     - parameter apiV1ServerRedundancyHostPutRequest: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1ServerRedundancyHostPutWithRequestBuilder(host: String, apiV1ServerRedundancyHostPutRequest: ApiV1ServerRedundancyHostPutRequest? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/server/redundancy/{host}"
        let hostPreEscape = "\(APIHelper.mapValueToPathItem(host))"
        let hostPostEscape = hostPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{host}", with: hostPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: apiV1ServerRedundancyHostPutRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
