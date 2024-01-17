//
// VideoUploadAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class VideoUploadAPI {

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

    /**
     Send chunk for the resumable replacement of a video
     
     - parameter uploadId: (query) Created session id to proceed with. If you didn&#39;t send chunks in the last hour, it is not valid anymore and you need to initialize a new upload.  
     - parameter contentRange: (header) Specifies the bytes in the file that the request is uploading.  For example, a value of &#x60;bytes 0-262143/1000000&#x60; shows that the request is sending the first 262144 bytes (256 x 1024) in a 2,469,036 byte file.  
     - parameter contentLength: (header) Size of the chunk that the request is sending.  Remember that larger chunks are more efficient. PeerTube&#39;s web client uses chunks varying from 1048576 bytes (~1MB) and increases or reduces size depending on connection health.  
     - parameter body: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func replaceVideoSourceResumable(uploadId: String, contentRange: String, contentLength: Double, body: URL? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return replaceVideoSourceResumableWithRequestBuilder(uploadId: uploadId, contentRange: contentRange, contentLength: contentLength, body: body).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Send chunk for the resumable replacement of a video
     - PUT /api/v1/videos/{id}/source/replace-resumable
     - **PeerTube >= 6.0** Uses [a resumable protocol](https://github.com/kukhariev/node-uploadx/blob/master/proto.md) to continue, pause or resume the replacement of a video
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter uploadId: (query) Created session id to proceed with. If you didn&#39;t send chunks in the last hour, it is not valid anymore and you need to initialize a new upload.  
     - parameter contentRange: (header) Specifies the bytes in the file that the request is uploading.  For example, a value of &#x60;bytes 0-262143/1000000&#x60; shows that the request is sending the first 262144 bytes (256 x 1024) in a 2,469,036 byte file.  
     - parameter contentLength: (header) Size of the chunk that the request is sending.  Remember that larger chunks are more efficient. PeerTube&#39;s web client uses chunks varying from 1048576 bytes (~1MB) and increases or reduces size depending on connection health.  
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func replaceVideoSourceResumableWithRequestBuilder(uploadId: String, contentRange: String, contentLength: Double, body: URL? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/videos/{id}/source/replace-resumable"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = ["body": body]

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "upload_id": (wrappedValue: uploadId.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/octet-stream",
            "Content-Range": contentRange.encodeToJSON(),
            "Content-Length": contentLength.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Cancel the resumable replacement of a video
     
     - parameter uploadId: (query) Created session id to proceed with. If you didn&#39;t send chunks in the last hour, it is not valid anymore and you need to initialize a new upload.  
     - parameter contentLength: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func replaceVideoSourceResumableCancel(uploadId: String, contentLength: Double, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return replaceVideoSourceResumableCancelWithRequestBuilder(uploadId: uploadId, contentLength: contentLength).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Cancel the resumable replacement of a video
     - DELETE /api/v1/videos/{id}/source/replace-resumable
     - **PeerTube >= 6.0** Uses [a resumable protocol](https://github.com/kukhariev/node-uploadx/blob/master/proto.md) to cancel the replacement of a video
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - responseHeaders: [Content-Length(Double)]
     - parameter uploadId: (query) Created session id to proceed with. If you didn&#39;t send chunks in the last hour, it is not valid anymore and you need to initialize a new upload.  
     - parameter contentLength: (header)  
     - returns: RequestBuilder<Void> 
     */
    open class func replaceVideoSourceResumableCancelWithRequestBuilder(uploadId: String, contentLength: Double) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/videos/{id}/source/replace-resumable"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "upload_id": (wrappedValue: uploadId.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Length": contentLength.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Initialize the resumable replacement of a video
     
     - parameter xUploadContentLength: (header) Number of bytes that will be uploaded in subsequent requests. Set this value to the size of the file you are uploading. 
     - parameter xUploadContentType: (header) MIME type of the file that you are uploading. Depending on your instance settings, acceptable values might vary. 
     - parameter videoReplaceSourceRequestResumable: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func replaceVideoSourceResumableInit(xUploadContentLength: Double, xUploadContentType: String, videoReplaceSourceRequestResumable: VideoReplaceSourceRequestResumable? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return replaceVideoSourceResumableInitWithRequestBuilder(xUploadContentLength: xUploadContentLength, xUploadContentType: xUploadContentType, videoReplaceSourceRequestResumable: videoReplaceSourceRequestResumable).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Initialize the resumable replacement of a video
     - POST /api/v1/videos/{id}/source/replace-resumable
     - **PeerTube >= 6.0** Uses [a resumable protocol](https://github.com/kukhariev/node-uploadx/blob/master/proto.md) to initialize the replacement of a video
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter xUploadContentLength: (header) Number of bytes that will be uploaded in subsequent requests. Set this value to the size of the file you are uploading. 
     - parameter xUploadContentType: (header) MIME type of the file that you are uploading. Depending on your instance settings, acceptable values might vary. 
     - parameter videoReplaceSourceRequestResumable: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func replaceVideoSourceResumableInitWithRequestBuilder(xUploadContentLength: Double, xUploadContentType: String, videoReplaceSourceRequestResumable: VideoReplaceSourceRequestResumable? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/videos/{id}/source/replace-resumable"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: videoReplaceSourceRequestResumable)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "X-Upload-Content-Length": xUploadContentLength.encodeToJSON(),
            "X-Upload-Content-Type": xUploadContentType.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Upload a video
     
     - parameter name: (form) Video name 
     - parameter channelId: (form) Channel id that will contain this video 
     - parameter videofile: (form) Video file 
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
    open class func uploadLegacy(name: String, channelId: Int, videofile: URL, privacy: VideoPrivacySet? = nil, category: Int? = nil, licence: Int? = nil, language: String? = nil, description: String? = nil, waitTranscoding: Bool? = nil, support: String? = nil, nsfw: Bool? = nil, tags: Set<String>? = nil, commentsEnabled: Bool? = nil, downloadEnabled: Bool? = nil, originallyPublishedAt: Date? = nil, scheduleUpdate: VideoScheduledUpdate? = nil, thumbnailfile: URL? = nil, previewfile: URL? = nil, videoPasswords: Set<String>? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: VideoUploadResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return uploadLegacyWithRequestBuilder(name: name, channelId: channelId, videofile: videofile, privacy: privacy, category: category, licence: licence, language: language, description: description, waitTranscoding: waitTranscoding, support: support, nsfw: nsfw, tags: tags, commentsEnabled: commentsEnabled, downloadEnabled: downloadEnabled, originallyPublishedAt: originallyPublishedAt, scheduleUpdate: scheduleUpdate, thumbnailfile: thumbnailfile, previewfile: previewfile, videoPasswords: videoPasswords).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Upload a video
     - POST /api/v1/videos/upload
     - Uses a single request to upload a video.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter name: (form) Video name 
     - parameter channelId: (form) Channel id that will contain this video 
     - parameter videofile: (form) Video file 
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
    open class func uploadLegacyWithRequestBuilder(name: String, channelId: Int, videofile: URL, privacy: VideoPrivacySet? = nil, category: Int? = nil, licence: Int? = nil, language: String? = nil, description: String? = nil, waitTranscoding: Bool? = nil, support: String? = nil, nsfw: Bool? = nil, tags: Set<String>? = nil, commentsEnabled: Bool? = nil, downloadEnabled: Bool? = nil, originallyPublishedAt: Date? = nil, scheduleUpdate: VideoScheduledUpdate? = nil, thumbnailfile: URL? = nil, previewfile: URL? = nil, videoPasswords: Set<String>? = nil) -> RequestBuilder<VideoUploadResponse> {
        let localVariablePath = "/api/v1/videos/upload"
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
            "videofile": videofile.encodeToJSON(),
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

    /**
     Send chunk for the resumable upload of a video
     
     - parameter uploadId: (query) Created session id to proceed with. If you didn&#39;t send chunks in the last hour, it is not valid anymore and you need to initialize a new upload.  
     - parameter contentRange: (header) Specifies the bytes in the file that the request is uploading.  For example, a value of &#x60;bytes 0-262143/1000000&#x60; shows that the request is sending the first 262144 bytes (256 x 1024) in a 2,469,036 byte file.  
     - parameter contentLength: (header) Size of the chunk that the request is sending.  Remember that larger chunks are more efficient. PeerTube&#39;s web client uses chunks varying from 1048576 bytes (~1MB) and increases or reduces size depending on connection health.  
     - parameter body: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func uploadResumable(uploadId: String, contentRange: String, contentLength: Double, body: URL? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: VideoUploadResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return uploadResumableWithRequestBuilder(uploadId: uploadId, contentRange: contentRange, contentLength: contentLength, body: body).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Send chunk for the resumable upload of a video
     - PUT /api/v1/videos/upload-resumable
     - Uses [a resumable protocol](https://github.com/kukhariev/node-uploadx/blob/master/proto.md) to continue, pause or resume the upload of a video
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - responseHeaders: [Content-Length(Double)]
     - parameter uploadId: (query) Created session id to proceed with. If you didn&#39;t send chunks in the last hour, it is not valid anymore and you need to initialize a new upload.  
     - parameter contentRange: (header) Specifies the bytes in the file that the request is uploading.  For example, a value of &#x60;bytes 0-262143/1000000&#x60; shows that the request is sending the first 262144 bytes (256 x 1024) in a 2,469,036 byte file.  
     - parameter contentLength: (header) Size of the chunk that the request is sending.  Remember that larger chunks are more efficient. PeerTube&#39;s web client uses chunks varying from 1048576 bytes (~1MB) and increases or reduces size depending on connection health.  
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<VideoUploadResponse> 
     */
    open class func uploadResumableWithRequestBuilder(uploadId: String, contentRange: String, contentLength: Double, body: URL? = nil) -> RequestBuilder<VideoUploadResponse> {
        let localVariablePath = "/api/v1/videos/upload-resumable"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = ["body": body]

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "upload_id": (wrappedValue: uploadId.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/octet-stream",
            "Content-Range": contentRange.encodeToJSON(),
            "Content-Length": contentLength.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<VideoUploadResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Cancel the resumable upload of a video, deleting any data uploaded so far
     
     - parameter uploadId: (query) Created session id to proceed with. If you didn&#39;t send chunks in the last hour, it is not valid anymore and you need to initialize a new upload.  
     - parameter contentLength: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func uploadResumableCancel(uploadId: String, contentLength: Double, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return uploadResumableCancelWithRequestBuilder(uploadId: uploadId, contentLength: contentLength).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Cancel the resumable upload of a video, deleting any data uploaded so far
     - DELETE /api/v1/videos/upload-resumable
     - Uses [a resumable protocol](https://github.com/kukhariev/node-uploadx/blob/master/proto.md) to cancel the upload of a video
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - responseHeaders: [Content-Length(Double)]
     - parameter uploadId: (query) Created session id to proceed with. If you didn&#39;t send chunks in the last hour, it is not valid anymore and you need to initialize a new upload.  
     - parameter contentLength: (header)  
     - returns: RequestBuilder<Void> 
     */
    open class func uploadResumableCancelWithRequestBuilder(uploadId: String, contentLength: Double) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/videos/upload-resumable"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "upload_id": (wrappedValue: uploadId.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Length": contentLength.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Initialize the resumable upload of a video
     
     - parameter xUploadContentLength: (header) Number of bytes that will be uploaded in subsequent requests. Set this value to the size of the file you are uploading. 
     - parameter xUploadContentType: (header) MIME type of the file that you are uploading. Depending on your instance settings, acceptable values might vary. 
     - parameter videoUploadRequestResumable: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func uploadResumableInit(xUploadContentLength: Double, xUploadContentType: String, videoUploadRequestResumable: VideoUploadRequestResumable? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return uploadResumableInitWithRequestBuilder(xUploadContentLength: xUploadContentLength, xUploadContentType: xUploadContentType, videoUploadRequestResumable: videoUploadRequestResumable).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Initialize the resumable upload of a video
     - POST /api/v1/videos/upload-resumable
     - Uses [a resumable protocol](https://github.com/kukhariev/node-uploadx/blob/master/proto.md) to initialize the upload of a video
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter xUploadContentLength: (header) Number of bytes that will be uploaded in subsequent requests. Set this value to the size of the file you are uploading. 
     - parameter xUploadContentType: (header) MIME type of the file that you are uploading. Depending on your instance settings, acceptable values might vary. 
     - parameter videoUploadRequestResumable: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func uploadResumableInitWithRequestBuilder(xUploadContentLength: Double, xUploadContentType: String, videoUploadRequestResumable: VideoUploadRequestResumable? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/videos/upload-resumable"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: videoUploadRequestResumable)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "X-Upload-Content-Length": xUploadContentLength.encodeToJSON(),
            "X-Upload-Content-Type": xUploadContentType.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
