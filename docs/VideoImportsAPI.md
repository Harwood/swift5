# VideoImportsAPI

All URIs are relative to *https://peertube2.cpy.re*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1VideosImportsIdCancelPost**](VideoImportsAPI.md#apiv1videosimportsidcancelpost) | **POST** /api/v1/videos/imports/{id}/cancel | Cancel video import
[**apiV1VideosImportsIdDelete**](VideoImportsAPI.md#apiv1videosimportsiddelete) | **DELETE** /api/v1/videos/imports/{id} | Delete video import
[**importVideo**](VideoImportsAPI.md#importvideo) | **POST** /api/v1/videos/imports | Import a video


# **apiV1VideosImportsIdCancelPost**
```swift
    open class func apiV1VideosImportsIdCancelPost(id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cancel video import

Cancel a pending video import

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | Entity id

// Cancel video import
VideoImportsAPI.apiV1VideosImportsIdCancelPost(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | Entity id | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1VideosImportsIdDelete**
```swift
    open class func apiV1VideosImportsIdDelete(id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete video import

Delete ended video import

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | Entity id

// Delete video import
VideoImportsAPI.apiV1VideosImportsIdDelete(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | Entity id | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importVideo**
```swift
    open class func importVideo(name: String, channelId: Int, privacy: VideoPrivacySet? = nil, category: Int? = nil, licence: Int? = nil, language: String? = nil, description: String? = nil, waitTranscoding: Bool? = nil, support: String? = nil, nsfw: Bool? = nil, tags: Set<String>? = nil, commentsEnabled: Bool? = nil, downloadEnabled: Bool? = nil, originallyPublishedAt: Date? = nil, scheduleUpdate: VideoScheduledUpdate? = nil, thumbnailfile: URL? = nil, previewfile: URL? = nil, videoPasswords: Set<String>? = nil, completion: @escaping (_ data: VideoUploadResponse?, _ error: Error?) -> Void)
```

Import a video

Import a torrent or magnetURI or HTTP resource (if enabled by the instance administrator)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Video name
let channelId = 987 // Int | Channel id that will contain this video
let privacy = VideoPrivacySet() // VideoPrivacySet |  (optional)
let category = 987 // Int | category id of the video (see [/videos/categories](#operation/getCategories)) (optional)
let licence = 987 // Int | licence id of the video (see [/videos/licences](#operation/getLicences)) (optional)
let language = "language_example" // String | language id of the video (see [/videos/languages](#operation/getLanguages)) (optional)
let description = "description_example" // String | Video description (optional)
let waitTranscoding = true // Bool | Whether or not we wait transcoding before publish the video (optional)
let support = "support_example" // String | A text tell the audience how to support the video creator (optional)
let nsfw = true // Bool | Whether or not this video contains sensitive content (optional)
let tags = ["inner_example"] // Set<String> | Video tags (maximum 5 tags each between 2 and 30 characters) (optional)
let commentsEnabled = true // Bool | Enable or disable comments for this video (optional)
let downloadEnabled = true // Bool | Enable or disable downloading for this video (optional)
let originallyPublishedAt = Date() // Date | Date when the content was originally published (optional)
let scheduleUpdate = VideoScheduledUpdate(privacy: VideoPrivacySet(), updateAt: Date()) // VideoScheduledUpdate |  (optional)
let thumbnailfile = URL(string: "https://example.com")! // URL | Video thumbnail file (optional)
let previewfile = URL(string: "https://example.com")! // URL | Video preview file (optional)
let videoPasswords = ["inner_example"] // Set<String> |  (optional)

// Import a video
VideoImportsAPI.importVideo(name: name, channelId: channelId, privacy: privacy, category: category, licence: licence, language: language, description: description, waitTranscoding: waitTranscoding, support: support, nsfw: nsfw, tags: tags, commentsEnabled: commentsEnabled, downloadEnabled: downloadEnabled, originallyPublishedAt: originallyPublishedAt, scheduleUpdate: scheduleUpdate, thumbnailfile: thumbnailfile, previewfile: previewfile, videoPasswords: videoPasswords) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Video name | 
 **channelId** | **Int** | Channel id that will contain this video | 
 **privacy** | [**VideoPrivacySet**](VideoPrivacySet.md) |  | [optional] 
 **category** | **Int** | category id of the video (see [/videos/categories](#operation/getCategories)) | [optional] 
 **licence** | **Int** | licence id of the video (see [/videos/licences](#operation/getLicences)) | [optional] 
 **language** | **String** | language id of the video (see [/videos/languages](#operation/getLanguages)) | [optional] 
 **description** | **String** | Video description | [optional] 
 **waitTranscoding** | **Bool** | Whether or not we wait transcoding before publish the video | [optional] 
 **support** | **String** | A text tell the audience how to support the video creator | [optional] 
 **nsfw** | **Bool** | Whether or not this video contains sensitive content | [optional] 
 **tags** | [**Set&lt;String&gt;**](String.md) | Video tags (maximum 5 tags each between 2 and 30 characters) | [optional] 
 **commentsEnabled** | **Bool** | Enable or disable comments for this video | [optional] 
 **downloadEnabled** | **Bool** | Enable or disable downloading for this video | [optional] 
 **originallyPublishedAt** | **Date** | Date when the content was originally published | [optional] 
 **scheduleUpdate** | [**VideoScheduledUpdate**](VideoScheduledUpdate.md) |  | [optional] 
 **thumbnailfile** | **URL** | Video thumbnail file | [optional] 
 **previewfile** | **URL** | Video preview file | [optional] 
 **videoPasswords** | [**Set&lt;String&gt;**](String.md) |  | [optional] 

### Return type

[**VideoUploadResponse**](VideoUploadResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

