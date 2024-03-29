//
// StaticVideoFilesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class StaticVideoFilesAPI {

    /**
     Get public HLS video file
     
     - parameter filename: (path) Filename 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func staticStreamingPlaylistsHlsFilenameGet(filename: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return staticStreamingPlaylistsHlsFilenameGetWithRequestBuilder(filename: filename).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get public HLS video file
     - GET /static/streaming-playlists/hls/{filename}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter filename: (path) Filename 
     - returns: RequestBuilder<Void> 
     */
    open class func staticStreamingPlaylistsHlsFilenameGetWithRequestBuilder(filename: String) -> RequestBuilder<Void> {
        var localVariablePath = "/static/streaming-playlists/hls/{filename}"
        let filenamePreEscape = "\(APIHelper.mapValueToPathItem(filename))"
        let filenamePostEscape = filenamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{filename}", with: filenamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get private HLS video file
     
     - parameter filename: (path) Filename 
     - parameter videoFileToken: (query) Video file token [generated](#operation/requestVideoToken) by PeerTube so you don&#39;t need to provide an OAuth token in the request header. (optional)
     - parameter reinjectVideoFileToken: (query) Ask the server to reinject videoFileToken in URLs in m3u8 playlist (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func staticStreamingPlaylistsHlsPrivateFilenameGet(filename: String, videoFileToken: String? = nil, reinjectVideoFileToken: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return staticStreamingPlaylistsHlsPrivateFilenameGetWithRequestBuilder(filename: filename, videoFileToken: videoFileToken, reinjectVideoFileToken: reinjectVideoFileToken).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get private HLS video file
     - GET /static/streaming-playlists/hls/private/{filename}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter filename: (path) Filename 
     - parameter videoFileToken: (query) Video file token [generated](#operation/requestVideoToken) by PeerTube so you don&#39;t need to provide an OAuth token in the request header. (optional)
     - parameter reinjectVideoFileToken: (query) Ask the server to reinject videoFileToken in URLs in m3u8 playlist (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func staticStreamingPlaylistsHlsPrivateFilenameGetWithRequestBuilder(filename: String, videoFileToken: String? = nil, reinjectVideoFileToken: Bool? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/static/streaming-playlists/hls/private/{filename}"
        let filenamePreEscape = "\(APIHelper.mapValueToPathItem(filename))"
        let filenamePostEscape = filenamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{filename}", with: filenamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "videoFileToken": (wrappedValue: videoFileToken?.encodeToJSON(), isExplode: true),
            "reinjectVideoFileToken": (wrappedValue: reinjectVideoFileToken?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get public Web Video file
     
     - parameter filename: (path) Filename 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func staticWebVideosFilenameGet(filename: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return staticWebVideosFilenameGetWithRequestBuilder(filename: filename).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get public Web Video file
     - GET /static/web-videos/{filename}
     - **PeerTube >= 6.0**
     - parameter filename: (path) Filename 
     - returns: RequestBuilder<Void> 
     */
    open class func staticWebVideosFilenameGetWithRequestBuilder(filename: String) -> RequestBuilder<Void> {
        var localVariablePath = "/static/web-videos/{filename}"
        let filenamePreEscape = "\(APIHelper.mapValueToPathItem(filename))"
        let filenamePostEscape = filenamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{filename}", with: filenamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get private Web Video file
     
     - parameter filename: (path) Filename 
     - parameter videoFileToken: (query) Video file token [generated](#operation/requestVideoToken) by PeerTube so you don&#39;t need to provide an OAuth token in the request header. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func staticWebVideosPrivateFilenameGet(filename: String, videoFileToken: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return staticWebVideosPrivateFilenameGetWithRequestBuilder(filename: filename, videoFileToken: videoFileToken).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get private Web Video file
     - GET /static/web-videos/private/{filename}
     - **PeerTube >= 6.0**
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter filename: (path) Filename 
     - parameter videoFileToken: (query) Video file token [generated](#operation/requestVideoToken) by PeerTube so you don&#39;t need to provide an OAuth token in the request header. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func staticWebVideosPrivateFilenameGetWithRequestBuilder(filename: String, videoFileToken: String? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/static/web-videos/private/{filename}"
        let filenamePreEscape = "\(APIHelper.mapValueToPathItem(filename))"
        let filenamePostEscape = filenamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{filename}", with: filenamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "videoFileToken": (wrappedValue: videoFileToken?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
