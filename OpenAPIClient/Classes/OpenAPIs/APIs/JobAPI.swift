//
// JobAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class JobAPI {

    /**
     Pause job queue
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1JobsPausePost(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1JobsPausePostWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Pause job queue
     - POST /api/v1/jobs/pause
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1JobsPausePostWithRequestBuilder() -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/jobs/pause"
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
     Resume job queue
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1JobsResumePost(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1JobsResumePostWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Resume job queue
     - POST /api/v1/jobs/resume
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1JobsResumePostWithRequestBuilder() -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/jobs/resume"
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
     * enum for parameter state
     */
    public enum State_getJobs: String, CaseIterable {
        case empty = ""
        case active = "active"
        case completed = "completed"
        case failed = "failed"
        case waiting = "waiting"
        case delayed = "delayed"
    }

    /**
     * enum for parameter jobType
     */
    public enum JobType_getJobs: String, CaseIterable {
        case activitypubFollow = "activitypub-follow"
        case activitypubHttpBroadcast = "activitypub-http-broadcast"
        case activitypubHttpFetcher = "activitypub-http-fetcher"
        case activitypubHttpUnicast = "activitypub-http-unicast"
        case email = "email"
        case videoTranscoding = "video-transcoding"
        case videoFileImport = "video-file-import"
        case videoImport = "video-import"
        case videosViewsStats = "videos-views-stats"
        case activitypubRefresher = "activitypub-refresher"
        case videoRedundancy = "video-redundancy"
        case videoLiveEnding = "video-live-ending"
        case videoChannelImport = "video-channel-import"
    }

    /**
     List instance jobs
     
     - parameter state: (path) The state of the job (&#39;&#39; for for no filter) 
     - parameter jobType: (query) job type (optional)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getJobs(state: State_getJobs, jobType: JobType_getJobs? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetJobs200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getJobsWithRequestBuilder(state: state, jobType: jobType, start: start, count: count, sort: sort).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List instance jobs
     - GET /api/v1/jobs/{state}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter state: (path) The state of the job (&#39;&#39; for for no filter) 
     - parameter jobType: (query) job type (optional)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - returns: RequestBuilder<GetJobs200Response> 
     */
    open class func getJobsWithRequestBuilder(state: State_getJobs, jobType: JobType_getJobs? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil) -> RequestBuilder<GetJobs200Response> {
        var localVariablePath = "/api/v1/jobs/{state}"
        let statePreEscape = "\(state.rawValue)"
        let statePostEscape = statePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{state}", with: statePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "jobType": (wrappedValue: jobType?.encodeToJSON(), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetJobs200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
