# VideoAPI

All URIs are relative to *https://peertube2.cpy.re*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addLive**](VideoAPI.md#addlive) | **POST** /api/v1/videos/live | Create a live
[**addView**](VideoAPI.md#addview) | **POST** /api/v1/videos/{id}/views | Notify user is watching a video
[**apiV1VideosIdStudioEditPost**](VideoAPI.md#apiv1videosidstudioeditpost) | **POST** /api/v1/videos/{id}/studio/edit | Create a studio task
[**apiV1VideosIdWatchingPut**](VideoAPI.md#apiv1videosidwatchingput) | **PUT** /api/v1/videos/{id}/watching | Set watching progress of a video
[**delVideo**](VideoAPI.md#delvideo) | **DELETE** /api/v1/videos/{id} | Delete a video
[**getAccountVideos**](VideoAPI.md#getaccountvideos) | **GET** /api/v1/accounts/{name}/videos | List videos of an account
[**getCategories**](VideoAPI.md#getcategories) | **GET** /api/v1/videos/categories | List available video categories
[**getLanguages**](VideoAPI.md#getlanguages) | **GET** /api/v1/videos/languages | List available video languages
[**getLicences**](VideoAPI.md#getlicences) | **GET** /api/v1/videos/licences | List available video licences
[**getLiveId**](VideoAPI.md#getliveid) | **GET** /api/v1/videos/live/{id} | Get information about a live
[**getVideo**](VideoAPI.md#getvideo) | **GET** /api/v1/videos/{id} | Get a video
[**getVideoChannelVideos**](VideoAPI.md#getvideochannelvideos) | **GET** /api/v1/video-channels/{channelHandle}/videos | List videos of a video channel
[**getVideoDesc**](VideoAPI.md#getvideodesc) | **GET** /api/v1/videos/{id}/description | Get complete video description
[**getVideoPrivacyPolicies**](VideoAPI.md#getvideoprivacypolicies) | **GET** /api/v1/videos/privacies | List available video privacy policies
[**getVideoSource**](VideoAPI.md#getvideosource) | **GET** /api/v1/videos/{id}/source | Get video source file metadata
[**getVideos**](VideoAPI.md#getvideos) | **GET** /api/v1/videos | List videos
[**listVideoStoryboards**](VideoAPI.md#listvideostoryboards) | **GET** /api/v1/videos/{id}/storyboards | List storyboards of a video
[**putVideo**](VideoAPI.md#putvideo) | **PUT** /api/v1/videos/{id} | Update a video
[**replaceVideoSourceResumable**](VideoAPI.md#replacevideosourceresumable) | **PUT** /api/v1/videos/{id}/source/replace-resumable | Send chunk for the resumable replacement of a video
[**replaceVideoSourceResumableCancel**](VideoAPI.md#replacevideosourceresumablecancel) | **DELETE** /api/v1/videos/{id}/source/replace-resumable | Cancel the resumable replacement of a video
[**replaceVideoSourceResumableInit**](VideoAPI.md#replacevideosourceresumableinit) | **POST** /api/v1/videos/{id}/source/replace-resumable | Initialize the resumable replacement of a video
[**requestVideoToken**](VideoAPI.md#requestvideotoken) | **POST** /api/v1/videos/{id}/token | Request video token
[**updateLiveId**](VideoAPI.md#updateliveid) | **PUT** /api/v1/videos/live/{id} | Update information about a live
[**uploadLegacy**](VideoAPI.md#uploadlegacy) | **POST** /api/v1/videos/upload | Upload a video
[**uploadResumable**](VideoAPI.md#uploadresumable) | **PUT** /api/v1/videos/upload-resumable | Send chunk for the resumable upload of a video
[**uploadResumableCancel**](VideoAPI.md#uploadresumablecancel) | **DELETE** /api/v1/videos/upload-resumable | Cancel the resumable upload of a video, deleting any data uploaded so far
[**uploadResumableInit**](VideoAPI.md#uploadresumableinit) | **POST** /api/v1/videos/upload-resumable | Initialize the resumable upload of a video


# **addLive**
```swift
    open class func addLive(channelId: Int, name: String, saveReplay: Bool? = nil, replaySettings: LiveVideoReplaySettings? = nil, permanentLive: Bool? = nil, latencyMode: LiveVideoLatencyMode? = nil, thumbnailfile: URL? = nil, previewfile: URL? = nil, privacy: VideoPrivacySet? = nil, category: Int? = nil, licence: Int? = nil, language: String? = nil, description: String? = nil, support: String? = nil, nsfw: Bool? = nil, tags: [String]? = nil, commentsEnabled: Bool? = nil, downloadEnabled: Bool? = nil, completion: @escaping (_ data: VideoUploadResponse?, _ error: Error?) -> Void)
```

Create a live

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelId = 987 // Int | Channel id that will contain this live video
let name = "name_example" // String | Live video/replay name
let saveReplay = true // Bool |  (optional)
let replaySettings = LiveVideoReplaySettings(privacy: VideoPrivacySet()) // LiveVideoReplaySettings |  (optional)
let permanentLive = true // Bool | User can stream multiple times in a permanent live (optional)
let latencyMode = LiveVideoLatencyMode() // LiveVideoLatencyMode |  (optional)
let thumbnailfile = URL(string: "https://example.com")! // URL | Live video/replay thumbnail file (optional)
let previewfile = URL(string: "https://example.com")! // URL | Live video/replay preview file (optional)
let privacy = VideoPrivacySet() // VideoPrivacySet |  (optional)
let category = 987 // Int | category id of the video (see [/videos/categories](#operation/getCategories)) (optional)
let licence = 987 // Int | licence id of the video (see [/videos/licences](#operation/getLicences)) (optional)
let language = "language_example" // String | language id of the video (see [/videos/languages](#operation/getLanguages)) (optional)
let description = "description_example" // String | Live video/replay description (optional)
let support = "support_example" // String | A text tell the audience how to support the creator (optional)
let nsfw = true // Bool | Whether or not this live video/replay contains sensitive content (optional)
let tags = ["inner_example"] // [String] | Live video/replay tags (maximum 5 tags each between 2 and 30 characters) (optional)
let commentsEnabled = true // Bool | Enable or disable comments for this live video/replay (optional)
let downloadEnabled = true // Bool | Enable or disable downloading for the replay of this live video (optional)

// Create a live
VideoAPI.addLive(channelId: channelId, name: name, saveReplay: saveReplay, replaySettings: replaySettings, permanentLive: permanentLive, latencyMode: latencyMode, thumbnailfile: thumbnailfile, previewfile: previewfile, privacy: privacy, category: category, licence: licence, language: language, description: description, support: support, nsfw: nsfw, tags: tags, commentsEnabled: commentsEnabled, downloadEnabled: downloadEnabled) { (response, error) in
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
 **channelId** | **Int** | Channel id that will contain this live video | 
 **name** | **String** | Live video/replay name | 
 **saveReplay** | **Bool** |  | [optional] 
 **replaySettings** | [**LiveVideoReplaySettings**](LiveVideoReplaySettings.md) |  | [optional] 
 **permanentLive** | **Bool** | User can stream multiple times in a permanent live | [optional] 
 **latencyMode** | [**LiveVideoLatencyMode**](LiveVideoLatencyMode.md) |  | [optional] 
 **thumbnailfile** | **URL** | Live video/replay thumbnail file | [optional] 
 **previewfile** | **URL** | Live video/replay preview file | [optional] 
 **privacy** | [**VideoPrivacySet**](VideoPrivacySet.md) |  | [optional] 
 **category** | **Int** | category id of the video (see [/videos/categories](#operation/getCategories)) | [optional] 
 **licence** | **Int** | licence id of the video (see [/videos/licences](#operation/getLicences)) | [optional] 
 **language** | **String** | language id of the video (see [/videos/languages](#operation/getLanguages)) | [optional] 
 **description** | **String** | Live video/replay description | [optional] 
 **support** | **String** | A text tell the audience how to support the creator | [optional] 
 **nsfw** | **Bool** | Whether or not this live video/replay contains sensitive content | [optional] 
 **tags** | [**[String]**](String.md) | Live video/replay tags (maximum 5 tags each between 2 and 30 characters) | [optional] 
 **commentsEnabled** | **Bool** | Enable or disable comments for this live video/replay | [optional] 
 **downloadEnabled** | **Bool** | Enable or disable downloading for the replay of this live video | [optional] 

### Return type

[**VideoUploadResponse**](VideoUploadResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addView**
```swift
    open class func addView(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, userViewingVideo: UserViewingVideo, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Notify user is watching a video

Call this endpoint regularly (every 5-10 seconds for example) to notify the server the user is watching the video. After a while, PeerTube will increase video's viewers counter. If the user is authenticated, PeerTube will also store the current player time.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid
let userViewingVideo = UserViewingVideo(currentTime: 123, viewEvent: "viewEvent_example") // UserViewingVideo | 

// Notify user is watching a video
VideoAPI.addView(id: id, userViewingVideo: userViewingVideo) { (response, error) in
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
 **id** | [**ApiV1VideosOwnershipIdAcceptPostIdParameter**](.md) | The object id, uuid or short uuid | 
 **userViewingVideo** | [**UserViewingVideo**](UserViewingVideo.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1VideosIdStudioEditPost**
```swift
    open class func apiV1VideosIdStudioEditPost(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create a studio task

Create a task to edit a video  (cut, add intro/outro etc)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid

// Create a studio task
VideoAPI.apiV1VideosIdStudioEditPost(id: id) { (response, error) in
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
 **id** | [**ApiV1VideosOwnershipIdAcceptPostIdParameter**](.md) | The object id, uuid or short uuid | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1VideosIdWatchingPut**
```swift
    open class func apiV1VideosIdWatchingPut(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, userViewingVideo: UserViewingVideo, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set watching progress of a video

This endpoint has been deprecated. Use `/videos/{id}/views` instead

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid
let userViewingVideo = UserViewingVideo(currentTime: 123, viewEvent: "viewEvent_example") // UserViewingVideo | 

// Set watching progress of a video
VideoAPI.apiV1VideosIdWatchingPut(id: id, userViewingVideo: userViewingVideo) { (response, error) in
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
 **id** | [**ApiV1VideosOwnershipIdAcceptPostIdParameter**](.md) | The object id, uuid or short uuid | 
 **userViewingVideo** | [**UserViewingVideo**](UserViewingVideo.md) |  | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delVideo**
```swift
    open class func delVideo(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a video

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid

// Delete a video
VideoAPI.delVideo(id: id) { (response, error) in
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
 **id** | [**ApiV1VideosOwnershipIdAcceptPostIdParameter**](.md) | The object id, uuid or short uuid | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountVideos**
```swift
    open class func getAccountVideos(name: String, categoryOneOf: GetAccountVideosCategoryOneOfParameter? = nil, isLive: Bool? = nil, tagsOneOf: GetAccountVideosTagsOneOfParameter? = nil, tagsAllOf: GetAccountVideosTagsAllOfParameter? = nil, licenceOneOf: GetAccountVideosLicenceOneOfParameter? = nil, languageOneOf: GetAccountVideosLanguageOneOfParameter? = nil, nsfw: Nsfw_getAccountVideos? = nil, isLocal: Bool? = nil, include: Include_getAccountVideos? = nil, privacyOneOf: VideoPrivacySet? = nil, hasHLSFiles: Bool? = nil, hasWebVideoFiles: Bool? = nil, skipCount: SkipCount_getAccountVideos? = nil, start: Int? = nil, count: Int? = nil, sort: Sort_getAccountVideos? = nil, excludeAlreadyWatched: Bool? = nil, completion: @escaping (_ data: VideoListResponse?, _ error: Error?) -> Void)
```

List videos of an account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The username or handle of the account
let categoryOneOf = getAccountVideos_categoryOneOf_parameter() // GetAccountVideosCategoryOneOfParameter | category id of the video (see [/videos/categories](#operation/getCategories)) (optional)
let isLive = true // Bool | whether or not the video is a live (optional)
let tagsOneOf = getAccountVideos_tagsOneOf_parameter() // GetAccountVideosTagsOneOfParameter | tag(s) of the video (optional)
let tagsAllOf = getAccountVideos_tagsAllOf_parameter() // GetAccountVideosTagsAllOfParameter | tag(s) of the video, where all should be present in the video (optional)
let licenceOneOf = getAccountVideos_licenceOneOf_parameter() // GetAccountVideosLicenceOneOfParameter | licence id of the video (see [/videos/licences](#operation/getLicences)) (optional)
let languageOneOf = getAccountVideos_languageOneOf_parameter() // GetAccountVideosLanguageOneOfParameter | language id of the video (see [/videos/languages](#operation/getLanguages)). Use `_unknown` to filter on videos that don't have a video language (optional)
let nsfw = "nsfw_example" // String | whether to include nsfw videos, if any (optional)
let isLocal = true // Bool | **PeerTube >= 4.0** Display only local or remote videos (optional)
let include = 987 // Int | **PeerTube >= 4.0** Include additional videos in results (can be combined using bitwise or operator) - `0` NONE - `1` NOT_PUBLISHED_STATE - `2` BLACKLISTED - `4` BLOCKED_OWNER - `8` FILES  (optional)
let privacyOneOf = VideoPrivacySet() // VideoPrivacySet | **PeerTube >= 4.0** Display only videos in this specific privacy/privacies (optional)
let hasHLSFiles = true // Bool | **PeerTube >= 4.0** Display only videos that have HLS files (optional)
let hasWebVideoFiles = true // Bool | **PeerTube >= 6.0** Display only videos that have Web Video files (optional)
let skipCount = "skipCount_example" // String | if you don't need the `total` in the response (optional) (default to ._false)
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String |  (optional)
let excludeAlreadyWatched = true // Bool | Whether or not to exclude videos that are in the user's video history (optional)

// List videos of an account
VideoAPI.getAccountVideos(name: name, categoryOneOf: categoryOneOf, isLive: isLive, tagsOneOf: tagsOneOf, tagsAllOf: tagsAllOf, licenceOneOf: licenceOneOf, languageOneOf: languageOneOf, nsfw: nsfw, isLocal: isLocal, include: include, privacyOneOf: privacyOneOf, hasHLSFiles: hasHLSFiles, hasWebVideoFiles: hasWebVideoFiles, skipCount: skipCount, start: start, count: count, sort: sort, excludeAlreadyWatched: excludeAlreadyWatched) { (response, error) in
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
 **name** | **String** | The username or handle of the account | 
 **categoryOneOf** | [**GetAccountVideosCategoryOneOfParameter**](.md) | category id of the video (see [/videos/categories](#operation/getCategories)) | [optional] 
 **isLive** | **Bool** | whether or not the video is a live | [optional] 
 **tagsOneOf** | [**GetAccountVideosTagsOneOfParameter**](.md) | tag(s) of the video | [optional] 
 **tagsAllOf** | [**GetAccountVideosTagsAllOfParameter**](.md) | tag(s) of the video, where all should be present in the video | [optional] 
 **licenceOneOf** | [**GetAccountVideosLicenceOneOfParameter**](.md) | licence id of the video (see [/videos/licences](#operation/getLicences)) | [optional] 
 **languageOneOf** | [**GetAccountVideosLanguageOneOfParameter**](.md) | language id of the video (see [/videos/languages](#operation/getLanguages)). Use &#x60;_unknown&#x60; to filter on videos that don&#39;t have a video language | [optional] 
 **nsfw** | **String** | whether to include nsfw videos, if any | [optional] 
 **isLocal** | **Bool** | **PeerTube &gt;&#x3D; 4.0** Display only local or remote videos | [optional] 
 **include** | **Int** | **PeerTube &gt;&#x3D; 4.0** Include additional videos in results (can be combined using bitwise or operator) - &#x60;0&#x60; NONE - &#x60;1&#x60; NOT_PUBLISHED_STATE - &#x60;2&#x60; BLACKLISTED - &#x60;4&#x60; BLOCKED_OWNER - &#x60;8&#x60; FILES  | [optional] 
 **privacyOneOf** | [**VideoPrivacySet**](.md) | **PeerTube &gt;&#x3D; 4.0** Display only videos in this specific privacy/privacies | [optional] 
 **hasHLSFiles** | **Bool** | **PeerTube &gt;&#x3D; 4.0** Display only videos that have HLS files | [optional] 
 **hasWebVideoFiles** | **Bool** | **PeerTube &gt;&#x3D; 6.0** Display only videos that have Web Video files | [optional] 
 **skipCount** | **String** | if you don&#39;t need the &#x60;total&#x60; in the response | [optional] [default to ._false]
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** |  | [optional] 
 **excludeAlreadyWatched** | **Bool** | Whether or not to exclude videos that are in the user&#39;s video history | [optional] 

### Return type

[**VideoListResponse**](VideoListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategories**
```swift
    open class func getCategories(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

List available video categories

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List available video categories
VideoAPI.getCategories() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

**[String]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLanguages**
```swift
    open class func getLanguages(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

List available video languages

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List available video languages
VideoAPI.getLanguages() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

**[String]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLicences**
```swift
    open class func getLicences(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

List available video licences

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List available video licences
VideoAPI.getLicences() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

**[String]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLiveId**
```swift
    open class func getLiveId(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, completion: @escaping (_ data: LiveVideoResponse?, _ error: Error?) -> Void)
```

Get information about a live

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid

// Get information about a live
VideoAPI.getLiveId(id: id) { (response, error) in
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
 **id** | [**ApiV1VideosOwnershipIdAcceptPostIdParameter**](.md) | The object id, uuid or short uuid | 

### Return type

[**LiveVideoResponse**](LiveVideoResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideo**
```swift
    open class func getVideo(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, xPeertubeVideoPassword: String? = nil, completion: @escaping (_ data: VideoDetails?, _ error: Error?) -> Void)
```

Get a video

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid
let xPeertubeVideoPassword = "xPeertubeVideoPassword_example" // String | Required on password protected video (optional)

// Get a video
VideoAPI.getVideo(id: id, xPeertubeVideoPassword: xPeertubeVideoPassword) { (response, error) in
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
 **id** | [**ApiV1VideosOwnershipIdAcceptPostIdParameter**](.md) | The object id, uuid or short uuid | 
 **xPeertubeVideoPassword** | **String** | Required on password protected video | [optional] 

### Return type

[**VideoDetails**](VideoDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideoChannelVideos**
```swift
    open class func getVideoChannelVideos(channelHandle: String, categoryOneOf: GetAccountVideosCategoryOneOfParameter? = nil, isLive: Bool? = nil, tagsOneOf: GetAccountVideosTagsOneOfParameter? = nil, tagsAllOf: GetAccountVideosTagsAllOfParameter? = nil, licenceOneOf: GetAccountVideosLicenceOneOfParameter? = nil, languageOneOf: GetAccountVideosLanguageOneOfParameter? = nil, nsfw: Nsfw_getVideoChannelVideos? = nil, isLocal: Bool? = nil, include: Include_getVideoChannelVideos? = nil, privacyOneOf: VideoPrivacySet? = nil, hasHLSFiles: Bool? = nil, hasWebVideoFiles: Bool? = nil, skipCount: SkipCount_getVideoChannelVideos? = nil, start: Int? = nil, count: Int? = nil, sort: Sort_getVideoChannelVideos? = nil, excludeAlreadyWatched: Bool? = nil, completion: @escaping (_ data: VideoListResponse?, _ error: Error?) -> Void)
```

List videos of a video channel

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelHandle = "channelHandle_example" // String | The video channel handle
let categoryOneOf = getAccountVideos_categoryOneOf_parameter() // GetAccountVideosCategoryOneOfParameter | category id of the video (see [/videos/categories](#operation/getCategories)) (optional)
let isLive = true // Bool | whether or not the video is a live (optional)
let tagsOneOf = getAccountVideos_tagsOneOf_parameter() // GetAccountVideosTagsOneOfParameter | tag(s) of the video (optional)
let tagsAllOf = getAccountVideos_tagsAllOf_parameter() // GetAccountVideosTagsAllOfParameter | tag(s) of the video, where all should be present in the video (optional)
let licenceOneOf = getAccountVideos_licenceOneOf_parameter() // GetAccountVideosLicenceOneOfParameter | licence id of the video (see [/videos/licences](#operation/getLicences)) (optional)
let languageOneOf = getAccountVideos_languageOneOf_parameter() // GetAccountVideosLanguageOneOfParameter | language id of the video (see [/videos/languages](#operation/getLanguages)). Use `_unknown` to filter on videos that don't have a video language (optional)
let nsfw = "nsfw_example" // String | whether to include nsfw videos, if any (optional)
let isLocal = true // Bool | **PeerTube >= 4.0** Display only local or remote videos (optional)
let include = 987 // Int | **PeerTube >= 4.0** Include additional videos in results (can be combined using bitwise or operator) - `0` NONE - `1` NOT_PUBLISHED_STATE - `2` BLACKLISTED - `4` BLOCKED_OWNER - `8` FILES  (optional)
let privacyOneOf = VideoPrivacySet() // VideoPrivacySet | **PeerTube >= 4.0** Display only videos in this specific privacy/privacies (optional)
let hasHLSFiles = true // Bool | **PeerTube >= 4.0** Display only videos that have HLS files (optional)
let hasWebVideoFiles = true // Bool | **PeerTube >= 6.0** Display only videos that have Web Video files (optional)
let skipCount = "skipCount_example" // String | if you don't need the `total` in the response (optional) (default to ._false)
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String |  (optional)
let excludeAlreadyWatched = true // Bool | Whether or not to exclude videos that are in the user's video history (optional)

// List videos of a video channel
VideoAPI.getVideoChannelVideos(channelHandle: channelHandle, categoryOneOf: categoryOneOf, isLive: isLive, tagsOneOf: tagsOneOf, tagsAllOf: tagsAllOf, licenceOneOf: licenceOneOf, languageOneOf: languageOneOf, nsfw: nsfw, isLocal: isLocal, include: include, privacyOneOf: privacyOneOf, hasHLSFiles: hasHLSFiles, hasWebVideoFiles: hasWebVideoFiles, skipCount: skipCount, start: start, count: count, sort: sort, excludeAlreadyWatched: excludeAlreadyWatched) { (response, error) in
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
 **channelHandle** | **String** | The video channel handle | 
 **categoryOneOf** | [**GetAccountVideosCategoryOneOfParameter**](.md) | category id of the video (see [/videos/categories](#operation/getCategories)) | [optional] 
 **isLive** | **Bool** | whether or not the video is a live | [optional] 
 **tagsOneOf** | [**GetAccountVideosTagsOneOfParameter**](.md) | tag(s) of the video | [optional] 
 **tagsAllOf** | [**GetAccountVideosTagsAllOfParameter**](.md) | tag(s) of the video, where all should be present in the video | [optional] 
 **licenceOneOf** | [**GetAccountVideosLicenceOneOfParameter**](.md) | licence id of the video (see [/videos/licences](#operation/getLicences)) | [optional] 
 **languageOneOf** | [**GetAccountVideosLanguageOneOfParameter**](.md) | language id of the video (see [/videos/languages](#operation/getLanguages)). Use &#x60;_unknown&#x60; to filter on videos that don&#39;t have a video language | [optional] 
 **nsfw** | **String** | whether to include nsfw videos, if any | [optional] 
 **isLocal** | **Bool** | **PeerTube &gt;&#x3D; 4.0** Display only local or remote videos | [optional] 
 **include** | **Int** | **PeerTube &gt;&#x3D; 4.0** Include additional videos in results (can be combined using bitwise or operator) - &#x60;0&#x60; NONE - &#x60;1&#x60; NOT_PUBLISHED_STATE - &#x60;2&#x60; BLACKLISTED - &#x60;4&#x60; BLOCKED_OWNER - &#x60;8&#x60; FILES  | [optional] 
 **privacyOneOf** | [**VideoPrivacySet**](.md) | **PeerTube &gt;&#x3D; 4.0** Display only videos in this specific privacy/privacies | [optional] 
 **hasHLSFiles** | **Bool** | **PeerTube &gt;&#x3D; 4.0** Display only videos that have HLS files | [optional] 
 **hasWebVideoFiles** | **Bool** | **PeerTube &gt;&#x3D; 6.0** Display only videos that have Web Video files | [optional] 
 **skipCount** | **String** | if you don&#39;t need the &#x60;total&#x60; in the response | [optional] [default to ._false]
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** |  | [optional] 
 **excludeAlreadyWatched** | **Bool** | Whether or not to exclude videos that are in the user&#39;s video history | [optional] 

### Return type

[**VideoListResponse**](VideoListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideoDesc**
```swift
    open class func getVideoDesc(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, xPeertubeVideoPassword: String? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Get complete video description

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid
let xPeertubeVideoPassword = "xPeertubeVideoPassword_example" // String | Required on password protected video (optional)

// Get complete video description
VideoAPI.getVideoDesc(id: id, xPeertubeVideoPassword: xPeertubeVideoPassword) { (response, error) in
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
 **id** | [**ApiV1VideosOwnershipIdAcceptPostIdParameter**](.md) | The object id, uuid or short uuid | 
 **xPeertubeVideoPassword** | **String** | Required on password protected video | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideoPrivacyPolicies**
```swift
    open class func getVideoPrivacyPolicies(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

List available video privacy policies

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// List available video privacy policies
VideoAPI.getVideoPrivacyPolicies() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

**[String]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideoSource**
```swift
    open class func getVideoSource(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, completion: @escaping (_ data: VideoSource?, _ error: Error?) -> Void)
```

Get video source file metadata

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid

// Get video source file metadata
VideoAPI.getVideoSource(id: id) { (response, error) in
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
 **id** | [**ApiV1VideosOwnershipIdAcceptPostIdParameter**](.md) | The object id, uuid or short uuid | 

### Return type

[**VideoSource**](VideoSource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideos**
```swift
    open class func getVideos(categoryOneOf: GetAccountVideosCategoryOneOfParameter? = nil, isLive: Bool? = nil, tagsOneOf: GetAccountVideosTagsOneOfParameter? = nil, tagsAllOf: GetAccountVideosTagsAllOfParameter? = nil, licenceOneOf: GetAccountVideosLicenceOneOfParameter? = nil, languageOneOf: GetAccountVideosLanguageOneOfParameter? = nil, nsfw: Nsfw_getVideos? = nil, isLocal: Bool? = nil, include: Include_getVideos? = nil, privacyOneOf: VideoPrivacySet? = nil, hasHLSFiles: Bool? = nil, hasWebVideoFiles: Bool? = nil, skipCount: SkipCount_getVideos? = nil, start: Int? = nil, count: Int? = nil, sort: Sort_getVideos? = nil, excludeAlreadyWatched: Bool? = nil, completion: @escaping (_ data: VideoListResponse?, _ error: Error?) -> Void)
```

List videos

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let categoryOneOf = getAccountVideos_categoryOneOf_parameter() // GetAccountVideosCategoryOneOfParameter | category id of the video (see [/videos/categories](#operation/getCategories)) (optional)
let isLive = true // Bool | whether or not the video is a live (optional)
let tagsOneOf = getAccountVideos_tagsOneOf_parameter() // GetAccountVideosTagsOneOfParameter | tag(s) of the video (optional)
let tagsAllOf = getAccountVideos_tagsAllOf_parameter() // GetAccountVideosTagsAllOfParameter | tag(s) of the video, where all should be present in the video (optional)
let licenceOneOf = getAccountVideos_licenceOneOf_parameter() // GetAccountVideosLicenceOneOfParameter | licence id of the video (see [/videos/licences](#operation/getLicences)) (optional)
let languageOneOf = getAccountVideos_languageOneOf_parameter() // GetAccountVideosLanguageOneOfParameter | language id of the video (see [/videos/languages](#operation/getLanguages)). Use `_unknown` to filter on videos that don't have a video language (optional)
let nsfw = "nsfw_example" // String | whether to include nsfw videos, if any (optional)
let isLocal = true // Bool | **PeerTube >= 4.0** Display only local or remote videos (optional)
let include = 987 // Int | **PeerTube >= 4.0** Include additional videos in results (can be combined using bitwise or operator) - `0` NONE - `1` NOT_PUBLISHED_STATE - `2` BLACKLISTED - `4` BLOCKED_OWNER - `8` FILES  (optional)
let privacyOneOf = VideoPrivacySet() // VideoPrivacySet | **PeerTube >= 4.0** Display only videos in this specific privacy/privacies (optional)
let hasHLSFiles = true // Bool | **PeerTube >= 4.0** Display only videos that have HLS files (optional)
let hasWebVideoFiles = true // Bool | **PeerTube >= 6.0** Display only videos that have Web Video files (optional)
let skipCount = "skipCount_example" // String | if you don't need the `total` in the response (optional) (default to ._false)
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String |  (optional)
let excludeAlreadyWatched = true // Bool | Whether or not to exclude videos that are in the user's video history (optional)

// List videos
VideoAPI.getVideos(categoryOneOf: categoryOneOf, isLive: isLive, tagsOneOf: tagsOneOf, tagsAllOf: tagsAllOf, licenceOneOf: licenceOneOf, languageOneOf: languageOneOf, nsfw: nsfw, isLocal: isLocal, include: include, privacyOneOf: privacyOneOf, hasHLSFiles: hasHLSFiles, hasWebVideoFiles: hasWebVideoFiles, skipCount: skipCount, start: start, count: count, sort: sort, excludeAlreadyWatched: excludeAlreadyWatched) { (response, error) in
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
 **categoryOneOf** | [**GetAccountVideosCategoryOneOfParameter**](.md) | category id of the video (see [/videos/categories](#operation/getCategories)) | [optional] 
 **isLive** | **Bool** | whether or not the video is a live | [optional] 
 **tagsOneOf** | [**GetAccountVideosTagsOneOfParameter**](.md) | tag(s) of the video | [optional] 
 **tagsAllOf** | [**GetAccountVideosTagsAllOfParameter**](.md) | tag(s) of the video, where all should be present in the video | [optional] 
 **licenceOneOf** | [**GetAccountVideosLicenceOneOfParameter**](.md) | licence id of the video (see [/videos/licences](#operation/getLicences)) | [optional] 
 **languageOneOf** | [**GetAccountVideosLanguageOneOfParameter**](.md) | language id of the video (see [/videos/languages](#operation/getLanguages)). Use &#x60;_unknown&#x60; to filter on videos that don&#39;t have a video language | [optional] 
 **nsfw** | **String** | whether to include nsfw videos, if any | [optional] 
 **isLocal** | **Bool** | **PeerTube &gt;&#x3D; 4.0** Display only local or remote videos | [optional] 
 **include** | **Int** | **PeerTube &gt;&#x3D; 4.0** Include additional videos in results (can be combined using bitwise or operator) - &#x60;0&#x60; NONE - &#x60;1&#x60; NOT_PUBLISHED_STATE - &#x60;2&#x60; BLACKLISTED - &#x60;4&#x60; BLOCKED_OWNER - &#x60;8&#x60; FILES  | [optional] 
 **privacyOneOf** | [**VideoPrivacySet**](.md) | **PeerTube &gt;&#x3D; 4.0** Display only videos in this specific privacy/privacies | [optional] 
 **hasHLSFiles** | **Bool** | **PeerTube &gt;&#x3D; 4.0** Display only videos that have HLS files | [optional] 
 **hasWebVideoFiles** | **Bool** | **PeerTube &gt;&#x3D; 6.0** Display only videos that have Web Video files | [optional] 
 **skipCount** | **String** | if you don&#39;t need the &#x60;total&#x60; in the response | [optional] [default to ._false]
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** |  | [optional] 
 **excludeAlreadyWatched** | **Bool** | Whether or not to exclude videos that are in the user&#39;s video history | [optional] 

### Return type

[**VideoListResponse**](VideoListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVideoStoryboards**
```swift
    open class func listVideoStoryboards(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, completion: @escaping (_ data: ListVideoStoryboards200Response?, _ error: Error?) -> Void)
```

List storyboards of a video

**PeerTube** >= 6.0

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid

// List storyboards of a video
VideoAPI.listVideoStoryboards(id: id) { (response, error) in
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
 **id** | [**ApiV1VideosOwnershipIdAcceptPostIdParameter**](.md) | The object id, uuid or short uuid | 

### Return type

[**ListVideoStoryboards200Response**](ListVideoStoryboards200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putVideo**
```swift
    open class func putVideo(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, thumbnailfile: URL? = nil, previewfile: URL? = nil, category: Int? = nil, licence: Int? = nil, language: String? = nil, privacy: VideoPrivacySet? = nil, description: String? = nil, waitTranscoding: String? = nil, support: String? = nil, nsfw: Bool? = nil, name: String? = nil, tags: [String]? = nil, commentsEnabled: Bool? = nil, downloadEnabled: Bool? = nil, originallyPublishedAt: Date? = nil, scheduleUpdate: VideoScheduledUpdate? = nil, videoPasswords: Set<String>? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a video

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid
let thumbnailfile = URL(string: "https://example.com")! // URL | Video thumbnail file (optional)
let previewfile = URL(string: "https://example.com")! // URL | Video preview file (optional)
let category = 987 // Int | category id of the video (see [/videos/categories](#operation/getCategories)) (optional)
let licence = 987 // Int | licence id of the video (see [/videos/licences](#operation/getLicences)) (optional)
let language = "language_example" // String | language id of the video (see [/videos/languages](#operation/getLanguages)) (optional)
let privacy = VideoPrivacySet() // VideoPrivacySet |  (optional)
let description = "description_example" // String | Video description (optional)
let waitTranscoding = "waitTranscoding_example" // String | Whether or not we wait transcoding before publish the video (optional)
let support = "support_example" // String | A text tell the audience how to support the video creator (optional)
let nsfw = true // Bool | Whether or not this video contains sensitive content (optional)
let name = "name_example" // String | Video name (optional)
let tags = ["inner_example"] // [String] | Video tags (maximum 5 tags each between 2 and 30 characters) (optional)
let commentsEnabled = true // Bool | Enable or disable comments for this video (optional)
let downloadEnabled = true // Bool | Enable or disable downloading for this video (optional)
let originallyPublishedAt = Date() // Date | Date when the content was originally published (optional)
let scheduleUpdate = VideoScheduledUpdate(privacy: VideoPrivacySet(), updateAt: Date()) // VideoScheduledUpdate |  (optional)
let videoPasswords = ["inner_example"] // Set<String> |  (optional)

// Update a video
VideoAPI.putVideo(id: id, thumbnailfile: thumbnailfile, previewfile: previewfile, category: category, licence: licence, language: language, privacy: privacy, description: description, waitTranscoding: waitTranscoding, support: support, nsfw: nsfw, name: name, tags: tags, commentsEnabled: commentsEnabled, downloadEnabled: downloadEnabled, originallyPublishedAt: originallyPublishedAt, scheduleUpdate: scheduleUpdate, videoPasswords: videoPasswords) { (response, error) in
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
 **id** | [**ApiV1VideosOwnershipIdAcceptPostIdParameter**](.md) | The object id, uuid or short uuid | 
 **thumbnailfile** | **URL** | Video thumbnail file | [optional] 
 **previewfile** | **URL** | Video preview file | [optional] 
 **category** | **Int** | category id of the video (see [/videos/categories](#operation/getCategories)) | [optional] 
 **licence** | **Int** | licence id of the video (see [/videos/licences](#operation/getLicences)) | [optional] 
 **language** | **String** | language id of the video (see [/videos/languages](#operation/getLanguages)) | [optional] 
 **privacy** | [**VideoPrivacySet**](VideoPrivacySet.md) |  | [optional] 
 **description** | **String** | Video description | [optional] 
 **waitTranscoding** | **String** | Whether or not we wait transcoding before publish the video | [optional] 
 **support** | **String** | A text tell the audience how to support the video creator | [optional] 
 **nsfw** | **Bool** | Whether or not this video contains sensitive content | [optional] 
 **name** | **String** | Video name | [optional] 
 **tags** | [**[String]**](String.md) | Video tags (maximum 5 tags each between 2 and 30 characters) | [optional] 
 **commentsEnabled** | **Bool** | Enable or disable comments for this video | [optional] 
 **downloadEnabled** | **Bool** | Enable or disable downloading for this video | [optional] 
 **originallyPublishedAt** | **Date** | Date when the content was originally published | [optional] 
 **scheduleUpdate** | [**VideoScheduledUpdate**](VideoScheduledUpdate.md) |  | [optional] 
 **videoPasswords** | [**Set&lt;String&gt;**](String.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replaceVideoSourceResumable**
```swift
    open class func replaceVideoSourceResumable(uploadId: String, contentRange: String, contentLength: Double, body: URL? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Send chunk for the resumable replacement of a video

**PeerTube >= 6.0** Uses [a resumable protocol](https://github.com/kukhariev/node-uploadx/blob/master/proto.md) to continue, pause or resume the replacement of a video

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let uploadId = "uploadId_example" // String | Created session id to proceed with. If you didn't send chunks in the last hour, it is not valid anymore and you need to initialize a new upload. 
let contentRange = "contentRange_example" // String | Specifies the bytes in the file that the request is uploading.  For example, a value of `bytes 0-262143/1000000` shows that the request is sending the first 262144 bytes (256 x 1024) in a 2,469,036 byte file. 
let contentLength = 987 // Double | Size of the chunk that the request is sending.  Remember that larger chunks are more efficient. PeerTube's web client uses chunks varying from 1048576 bytes (~1MB) and increases or reduces size depending on connection health. 
let body = URL(string: "https://example.com")! // URL |  (optional)

// Send chunk for the resumable replacement of a video
VideoAPI.replaceVideoSourceResumable(uploadId: uploadId, contentRange: contentRange, contentLength: contentLength, body: body) { (response, error) in
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
 **uploadId** | **String** | Created session id to proceed with. If you didn&#39;t send chunks in the last hour, it is not valid anymore and you need to initialize a new upload.  | 
 **contentRange** | **String** | Specifies the bytes in the file that the request is uploading.  For example, a value of &#x60;bytes 0-262143/1000000&#x60; shows that the request is sending the first 262144 bytes (256 x 1024) in a 2,469,036 byte file.  | 
 **contentLength** | **Double** | Size of the chunk that the request is sending.  Remember that larger chunks are more efficient. PeerTube&#39;s web client uses chunks varying from 1048576 bytes (~1MB) and increases or reduces size depending on connection health.  | 
 **body** | **URL** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replaceVideoSourceResumableCancel**
```swift
    open class func replaceVideoSourceResumableCancel(uploadId: String, contentLength: Double, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cancel the resumable replacement of a video

**PeerTube >= 6.0** Uses [a resumable protocol](https://github.com/kukhariev/node-uploadx/blob/master/proto.md) to cancel the replacement of a video

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let uploadId = "uploadId_example" // String | Created session id to proceed with. If you didn't send chunks in the last hour, it is not valid anymore and you need to initialize a new upload. 
let contentLength = 987 // Double | 

// Cancel the resumable replacement of a video
VideoAPI.replaceVideoSourceResumableCancel(uploadId: uploadId, contentLength: contentLength) { (response, error) in
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
 **uploadId** | **String** | Created session id to proceed with. If you didn&#39;t send chunks in the last hour, it is not valid anymore and you need to initialize a new upload.  | 
 **contentLength** | **Double** |  | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replaceVideoSourceResumableInit**
```swift
    open class func replaceVideoSourceResumableInit(xUploadContentLength: Double, xUploadContentType: String, videoReplaceSourceRequestResumable: VideoReplaceSourceRequestResumable? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Initialize the resumable replacement of a video

**PeerTube >= 6.0** Uses [a resumable protocol](https://github.com/kukhariev/node-uploadx/blob/master/proto.md) to initialize the replacement of a video

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let xUploadContentLength = 987 // Double | Number of bytes that will be uploaded in subsequent requests. Set this value to the size of the file you are uploading.
let xUploadContentType = "xUploadContentType_example" // String | MIME type of the file that you are uploading. Depending on your instance settings, acceptable values might vary.
let videoReplaceSourceRequestResumable = VideoReplaceSourceRequestResumable(filename: "filename_example") // VideoReplaceSourceRequestResumable |  (optional)

// Initialize the resumable replacement of a video
VideoAPI.replaceVideoSourceResumableInit(xUploadContentLength: xUploadContentLength, xUploadContentType: xUploadContentType, videoReplaceSourceRequestResumable: videoReplaceSourceRequestResumable) { (response, error) in
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
 **xUploadContentLength** | **Double** | Number of bytes that will be uploaded in subsequent requests. Set this value to the size of the file you are uploading. | 
 **xUploadContentType** | **String** | MIME type of the file that you are uploading. Depending on your instance settings, acceptable values might vary. | 
 **videoReplaceSourceRequestResumable** | [**VideoReplaceSourceRequestResumable**](VideoReplaceSourceRequestResumable.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestVideoToken**
```swift
    open class func requestVideoToken(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, xPeertubeVideoPassword: String? = nil, completion: @escaping (_ data: VideoTokenResponse?, _ error: Error?) -> Void)
```

Request video token

Request special tokens that expire quickly to use them in some context (like accessing private static files)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid
let xPeertubeVideoPassword = "xPeertubeVideoPassword_example" // String | Required on password protected video (optional)

// Request video token
VideoAPI.requestVideoToken(id: id, xPeertubeVideoPassword: xPeertubeVideoPassword) { (response, error) in
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
 **id** | [**ApiV1VideosOwnershipIdAcceptPostIdParameter**](.md) | The object id, uuid or short uuid | 
 **xPeertubeVideoPassword** | **String** | Required on password protected video | [optional] 

### Return type

[**VideoTokenResponse**](VideoTokenResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLiveId**
```swift
    open class func updateLiveId(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, liveVideoUpdate: LiveVideoUpdate? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update information about a live

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid
let liveVideoUpdate = LiveVideoUpdate(saveReplay: false, replaySettings: LiveVideoReplaySettings(privacy: VideoPrivacySet()), permanentLive: false, latencyMode: LiveVideoLatencyMode()) // LiveVideoUpdate |  (optional)

// Update information about a live
VideoAPI.updateLiveId(id: id, liveVideoUpdate: liveVideoUpdate) { (response, error) in
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
 **id** | [**ApiV1VideosOwnershipIdAcceptPostIdParameter**](.md) | The object id, uuid or short uuid | 
 **liveVideoUpdate** | [**LiveVideoUpdate**](LiveVideoUpdate.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadLegacy**
```swift
    open class func uploadLegacy(name: String, channelId: Int, videofile: URL, privacy: VideoPrivacySet? = nil, category: Int? = nil, licence: Int? = nil, language: String? = nil, description: String? = nil, waitTranscoding: Bool? = nil, support: String? = nil, nsfw: Bool? = nil, tags: Set<String>? = nil, commentsEnabled: Bool? = nil, downloadEnabled: Bool? = nil, originallyPublishedAt: Date? = nil, scheduleUpdate: VideoScheduledUpdate? = nil, thumbnailfile: URL? = nil, previewfile: URL? = nil, videoPasswords: Set<String>? = nil, completion: @escaping (_ data: VideoUploadResponse?, _ error: Error?) -> Void)
```

Upload a video

Uses a single request to upload a video.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Video name
let channelId = 987 // Int | Channel id that will contain this video
let videofile = URL(string: "https://example.com")! // URL | Video file
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

// Upload a video
VideoAPI.uploadLegacy(name: name, channelId: channelId, videofile: videofile, privacy: privacy, category: category, licence: licence, language: language, description: description, waitTranscoding: waitTranscoding, support: support, nsfw: nsfw, tags: tags, commentsEnabled: commentsEnabled, downloadEnabled: downloadEnabled, originallyPublishedAt: originallyPublishedAt, scheduleUpdate: scheduleUpdate, thumbnailfile: thumbnailfile, previewfile: previewfile, videoPasswords: videoPasswords) { (response, error) in
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
 **videofile** | **URL** | Video file | 
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

# **uploadResumable**
```swift
    open class func uploadResumable(uploadId: String, contentRange: String, contentLength: Double, body: URL? = nil, completion: @escaping (_ data: VideoUploadResponse?, _ error: Error?) -> Void)
```

Send chunk for the resumable upload of a video

Uses [a resumable protocol](https://github.com/kukhariev/node-uploadx/blob/master/proto.md) to continue, pause or resume the upload of a video

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let uploadId = "uploadId_example" // String | Created session id to proceed with. If you didn't send chunks in the last hour, it is not valid anymore and you need to initialize a new upload. 
let contentRange = "contentRange_example" // String | Specifies the bytes in the file that the request is uploading.  For example, a value of `bytes 0-262143/1000000` shows that the request is sending the first 262144 bytes (256 x 1024) in a 2,469,036 byte file. 
let contentLength = 987 // Double | Size of the chunk that the request is sending.  Remember that larger chunks are more efficient. PeerTube's web client uses chunks varying from 1048576 bytes (~1MB) and increases or reduces size depending on connection health. 
let body = URL(string: "https://example.com")! // URL |  (optional)

// Send chunk for the resumable upload of a video
VideoAPI.uploadResumable(uploadId: uploadId, contentRange: contentRange, contentLength: contentLength, body: body) { (response, error) in
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
 **uploadId** | **String** | Created session id to proceed with. If you didn&#39;t send chunks in the last hour, it is not valid anymore and you need to initialize a new upload.  | 
 **contentRange** | **String** | Specifies the bytes in the file that the request is uploading.  For example, a value of &#x60;bytes 0-262143/1000000&#x60; shows that the request is sending the first 262144 bytes (256 x 1024) in a 2,469,036 byte file.  | 
 **contentLength** | **Double** | Size of the chunk that the request is sending.  Remember that larger chunks are more efficient. PeerTube&#39;s web client uses chunks varying from 1048576 bytes (~1MB) and increases or reduces size depending on connection health.  | 
 **body** | **URL** |  | [optional] 

### Return type

[**VideoUploadResponse**](VideoUploadResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadResumableCancel**
```swift
    open class func uploadResumableCancel(uploadId: String, contentLength: Double, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cancel the resumable upload of a video, deleting any data uploaded so far

Uses [a resumable protocol](https://github.com/kukhariev/node-uploadx/blob/master/proto.md) to cancel the upload of a video

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let uploadId = "uploadId_example" // String | Created session id to proceed with. If you didn't send chunks in the last hour, it is not valid anymore and you need to initialize a new upload. 
let contentLength = 987 // Double | 

// Cancel the resumable upload of a video, deleting any data uploaded so far
VideoAPI.uploadResumableCancel(uploadId: uploadId, contentLength: contentLength) { (response, error) in
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
 **uploadId** | **String** | Created session id to proceed with. If you didn&#39;t send chunks in the last hour, it is not valid anymore and you need to initialize a new upload.  | 
 **contentLength** | **Double** |  | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadResumableInit**
```swift
    open class func uploadResumableInit(xUploadContentLength: Double, xUploadContentType: String, videoUploadRequestResumable: VideoUploadRequestResumable? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Initialize the resumable upload of a video

Uses [a resumable protocol](https://github.com/kukhariev/node-uploadx/blob/master/proto.md) to initialize the upload of a video

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let xUploadContentLength = 987 // Double | Number of bytes that will be uploaded in subsequent requests. Set this value to the size of the file you are uploading.
let xUploadContentType = "xUploadContentType_example" // String | MIME type of the file that you are uploading. Depending on your instance settings, acceptable values might vary.
let videoUploadRequestResumable = VideoUploadRequestResumable(name: "name_example", channelId: 123, privacy: VideoPrivacySet(), category: 123, licence: 123, language: "language_example", description: "description_example", waitTranscoding: false, support: "support_example", nsfw: false, tags: ["tags_example"], commentsEnabled: false, downloadEnabled: false, originallyPublishedAt: Date(), scheduleUpdate: VideoScheduledUpdate(privacy: nil, updateAt: Date()), thumbnailfile: URL(string: "https://example.com")!, previewfile: URL(string: "https://example.com")!, videoPasswords: ["videoPasswords_example"], filename: "filename_example") // VideoUploadRequestResumable |  (optional)

// Initialize the resumable upload of a video
VideoAPI.uploadResumableInit(xUploadContentLength: xUploadContentLength, xUploadContentType: xUploadContentType, videoUploadRequestResumable: videoUploadRequestResumable) { (response, error) in
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
 **xUploadContentLength** | **Double** | Number of bytes that will be uploaded in subsequent requests. Set this value to the size of the file you are uploading. | 
 **xUploadContentType** | **String** | MIME type of the file that you are uploading. Depending on your instance settings, acceptable values might vary. | 
 **videoUploadRequestResumable** | [**VideoUploadRequestResumable**](VideoUploadRequestResumable.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

