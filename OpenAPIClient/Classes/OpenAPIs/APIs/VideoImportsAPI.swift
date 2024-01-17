//
// VideoImportsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class VideoImportsAPI {

    /**
     Cancel video import
     
     - parameter id: (path) Entity id 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1VideosImportsIdCancelPost(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1VideosImportsIdCancelPostWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Cancel video import
     - POST /api/v1/videos/imports/{id}/cancel
     - Cancel a pending video import
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter id: (path) Entity id 
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1VideosImportsIdCancelPostWithRequestBuilder(id: Int) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/videos/imports/{id}/cancel"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
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
     Delete video import
     
     - parameter id: (path) Entity id 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1VideosImportsIdDelete(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1VideosImportsIdDeleteWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete video import
     - DELETE /api/v1/videos/imports/{id}
     - Delete ended video import
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter id: (path) Entity id 
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1VideosImportsIdDeleteWithRequestBuilder(id: Int) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/videos/imports/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
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
     Import a video
     
     - parameter name: (form) Video name 
     - parameter channelId: (form) Channel id that will contain this video 
     - parameter privacy: (form)  (optional)
     - parameter category: (form) category id of the video (see [/videos/categories](#operation/getCategories)) (optional)
     - parameter licence: (form) licence id of the video (see [/videos/licences](#operation/getLicences)) (optional)
     - parameter language: (form) language id of the video (see [/videos/languages](#operation/getLanguages)) (optional)
     - parameter description: (form) Video description (optional)
     - parameter waitTranscoding: (form) Whether or not we wait transcoding before publish the video (optional)
     - parameter support: (form) A text tell the audience how to support the video creator (optional)
     - parameter nsfw: (form) Whether or not this video contains sensitive content (optional)
     - parameter tags: (form) Video tags (maximum 5 tags each between 2 and 30 characters) (optional)
     - parameter commentsEnabled: (form) Enable or disable comments for this video (optional)
     - parameter downloadEnabled: (form) Enable or disable downloading for this video (optional)
     - parameter originallyPublishedAt: (form) Date when the content was originally published (optional)
     - parameter scheduleUpdate: (form)  (optional)
     - parameter thumbnailfile: (form) Video thumbnail file (optional)
     - parameter previewfile: (form) Video preview file (optional)
     - parameter videoPasswords: (form)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func importVideo(name: String, channelId: Int, privacy: VideoPrivacySet? = nil, category: Int? = nil, licence: Int? = nil, language: String? = nil, description: String? = nil, waitTranscoding: Bool? = nil, support: String? = nil, nsfw: Bool? = nil, tags: Set<String>? = nil, commentsEnabled: Bool? = nil, downloadEnabled: Bool? = nil, originallyPublishedAt: Date? = nil, scheduleUpdate: VideoScheduledUpdate? = nil, thumbnailfile: URL? = nil, previewfile: URL? = nil, videoPasswords: Set<String>? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: VideoUploadResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return importVideoWithRequestBuilder(name: name, channelId: channelId, privacy: privacy, category: category, licence: licence, language: language, description: description, waitTranscoding: waitTranscoding, support: support, nsfw: nsfw, tags: tags, commentsEnabled: commentsEnabled, downloadEnabled: downloadEnabled, originallyPublishedAt: originallyPublishedAt, scheduleUpdate: scheduleUpdate, thumbnailfile: thumbnailfile, previewfile: previewfile, videoPasswords: videoPasswords).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Import a video
     - POST /api/v1/videos/imports
     - Import a torrent or magnetURI or HTTP resource (if enabled by the instance administrator)
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter name: (form) Video name 
     - parameter channelId: (form) Channel id that will contain this video 
     - parameter privacy: (form)  (optional)
     - parameter category: (form) category id of the video (see [/videos/categories](#operation/getCategories)) (optional)
     - parameter licence: (form) licence id of the video (see [/videos/licences](#operation/getLicences)) (optional)
     - parameter language: (form) language id of the video (see [/videos/languages](#operation/getLanguages)) (optional)
     - parameter description: (form) Video description (optional)
     - parameter waitTranscoding: (form) Whether or not we wait transcoding before publish the video (optional)
     - parameter support: (form) A text tell the audience how to support the video creator (optional)
     - parameter nsfw: (form) Whether or not this video contains sensitive content (optional)
     - parameter tags: (form) Video tags (maximum 5 tags each between 2 and 30 characters) (optional)
     - parameter commentsEnabled: (form) Enable or disable comments for this video (optional)
     - parameter downloadEnabled: (form) Enable or disable downloading for this video (optional)
     - parameter originallyPublishedAt: (form) Date when the content was originally published (optional)
     - parameter scheduleUpdate: (form)  (optional)
     - parameter thumbnailfile: (form) Video thumbnail file (optional)
     - parameter previewfile: (form) Video preview file (optional)
     - parameter videoPasswords: (form)  (optional)
     - returns: RequestBuilder<VideoUploadResponse> 
     */
    open class func importVideoWithRequestBuilder(name: String, channelId: Int, privacy: VideoPrivacySet? = nil, category: Int? = nil, licence: Int? = nil, language: String? = nil, description: String? = nil, waitTranscoding: Bool? = nil, support: String? = nil, nsfw: Bool? = nil, tags: Set<String>? = nil, commentsEnabled: Bool? = nil, downloadEnabled: Bool? = nil, originallyPublishedAt: Date? = nil, scheduleUpdate: VideoScheduledUpdate? = nil, thumbnailfile: URL? = nil, previewfile: URL? = nil, videoPasswords: Set<String>? = nil) -> RequestBuilder<VideoUploadResponse> {
        let localVariablePath = "/api/v1/videos/imports"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableFormParams: [String: Any?] = [
            "name": name.encodeToJSON(),
            "channelId": channelId.encodeToJSON(),
            "privacy": privacy?.encodeToJSON(),
            "category": category?.encodeToJSON(),
            "licence": licence?.encodeToJSON(),
            "language": language?.encodeToJSON(),
            "description": description?.encodeToJSON(),
            "waitTranscoding": waitTranscoding?.encodeToJSON(),
            "support": support?.encodeToJSON(),
            "nsfw": nsfw?.encodeToJSON(),
            "tags": tags?.encodeToJSON(),
            "commentsEnabled": commentsEnabled?.encodeToJSON(),
            "downloadEnabled": downloadEnabled?.encodeToJSON(),
            "originallyPublishedAt": originallyPublishedAt?.encodeToJSON(),
            "scheduleUpdate": scheduleUpdate?.encodeToJSON(),
            "thumbnailfile": thumbnailfile?.encodeToJSON(),
            "previewfile": previewfile?.encodeToJSON(),
            "videoPasswords": videoPasswords?.encodeToJSON(),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "multipart/form-data",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<VideoUploadResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}