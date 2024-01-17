# VideoChannelsAPI

All URIs are relative to *https://peertube2.cpy.re*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addVideoChannel**](VideoChannelsAPI.md#addvideochannel) | **POST** /api/v1/video-channels | Create a video channel
[**apiV1AccountsNameVideoChannelSyncsGet**](VideoChannelsAPI.md#apiv1accountsnamevideochannelsyncsget) | **GET** /api/v1/accounts/{name}/video-channel-syncs | List the synchronizations of video channels of an account
[**apiV1AccountsNameVideoChannelsGet**](VideoChannelsAPI.md#apiv1accountsnamevideochannelsget) | **GET** /api/v1/accounts/{name}/video-channels | List video channels of an account
[**apiV1VideoChannelsChannelHandleAvatarDelete**](VideoChannelsAPI.md#apiv1videochannelschannelhandleavatardelete) | **DELETE** /api/v1/video-channels/{channelHandle}/avatar | Delete channel avatar
[**apiV1VideoChannelsChannelHandleAvatarPickPost**](VideoChannelsAPI.md#apiv1videochannelschannelhandleavatarpickpost) | **POST** /api/v1/video-channels/{channelHandle}/avatar/pick | Update channel avatar
[**apiV1VideoChannelsChannelHandleBannerDelete**](VideoChannelsAPI.md#apiv1videochannelschannelhandlebannerdelete) | **DELETE** /api/v1/video-channels/{channelHandle}/banner | Delete channel banner
[**apiV1VideoChannelsChannelHandleBannerPickPost**](VideoChannelsAPI.md#apiv1videochannelschannelhandlebannerpickpost) | **POST** /api/v1/video-channels/{channelHandle}/banner/pick | Update channel banner
[**apiV1VideoChannelsChannelHandleImportVideosPost**](VideoChannelsAPI.md#apiv1videochannelschannelhandleimportvideospost) | **POST** /api/v1/video-channels/{channelHandle}/import-videos | Import videos in channel
[**apiV1VideoChannelsChannelHandleVideoPlaylistsGet**](VideoChannelsAPI.md#apiv1videochannelschannelhandlevideoplaylistsget) | **GET** /api/v1/video-channels/{channelHandle}/video-playlists | List playlists of a channel
[**delVideoChannel**](VideoChannelsAPI.md#delvideochannel) | **DELETE** /api/v1/video-channels/{channelHandle} | Delete a video channel
[**getVideoChannel**](VideoChannelsAPI.md#getvideochannel) | **GET** /api/v1/video-channels/{channelHandle} | Get a video channel
[**getVideoChannelFollowers**](VideoChannelsAPI.md#getvideochannelfollowers) | **GET** /api/v1/video-channels/{channelHandle}/followers | List followers of a video channel
[**getVideoChannelVideos**](VideoChannelsAPI.md#getvideochannelvideos) | **GET** /api/v1/video-channels/{channelHandle}/videos | List videos of a video channel
[**getVideoChannels**](VideoChannelsAPI.md#getvideochannels) | **GET** /api/v1/video-channels | List video channels
[**putVideoChannel**](VideoChannelsAPI.md#putvideochannel) | **PUT** /api/v1/video-channels/{channelHandle} | Update a video channel


# **addVideoChannel**
```swift
    open class func addVideoChannel(videoChannelCreate: VideoChannelCreate? = nil, completion: @escaping (_ data: AddVideoChannel200Response?, _ error: Error?) -> Void)
```

Create a video channel

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let videoChannelCreate = VideoChannelCreate(displayName: 123, description: 123, support: 123, name: 123) // VideoChannelCreate |  (optional)

// Create a video channel
VideoChannelsAPI.addVideoChannel(videoChannelCreate: videoChannelCreate) { (response, error) in
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
 **videoChannelCreate** | [**VideoChannelCreate**](VideoChannelCreate.md) |  | [optional] 

### Return type

[**AddVideoChannel200Response**](AddVideoChannel200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountsNameVideoChannelSyncsGet**
```swift
    open class func apiV1AccountsNameVideoChannelSyncsGet(name: String, start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: VideoChannelSyncList?, _ error: Error?) -> Void)
```

List the synchronizations of video channels of an account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The username or handle of the account
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// List the synchronizations of video channels of an account
VideoChannelsAPI.apiV1AccountsNameVideoChannelSyncsGet(name: name, start: start, count: count, sort: sort) { (response, error) in
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
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort column | [optional] 

### Return type

[**VideoChannelSyncList**](VideoChannelSyncList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AccountsNameVideoChannelsGet**
```swift
    open class func apiV1AccountsNameVideoChannelsGet(name: String, withStats: Bool? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: VideoChannelList?, _ error: Error?) -> Void)
```

List video channels of an account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The username or handle of the account
let withStats = true // Bool | include daily view statistics for the last 30 days and total views (only if authentified as the account user) (optional)
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// List video channels of an account
VideoChannelsAPI.apiV1AccountsNameVideoChannelsGet(name: name, withStats: withStats, start: start, count: count, sort: sort) { (response, error) in
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
 **withStats** | **Bool** | include daily view statistics for the last 30 days and total views (only if authentified as the account user) | [optional] 
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort column | [optional] 

### Return type

[**VideoChannelList**](VideoChannelList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1VideoChannelsChannelHandleAvatarDelete**
```swift
    open class func apiV1VideoChannelsChannelHandleAvatarDelete(channelHandle: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete channel avatar

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelHandle = "channelHandle_example" // String | The video channel handle

// Delete channel avatar
VideoChannelsAPI.apiV1VideoChannelsChannelHandleAvatarDelete(channelHandle: channelHandle) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1VideoChannelsChannelHandleAvatarPickPost**
```swift
    open class func apiV1VideoChannelsChannelHandleAvatarPickPost(channelHandle: String, avatarfile: URL? = nil, completion: @escaping (_ data: ApiV1UsersMeAvatarPickPost200Response?, _ error: Error?) -> Void)
```

Update channel avatar

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelHandle = "channelHandle_example" // String | The video channel handle
let avatarfile = URL(string: "https://example.com")! // URL | The file to upload. (optional)

// Update channel avatar
VideoChannelsAPI.apiV1VideoChannelsChannelHandleAvatarPickPost(channelHandle: channelHandle, avatarfile: avatarfile) { (response, error) in
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
 **avatarfile** | **URL** | The file to upload. | [optional] 

### Return type

[**ApiV1UsersMeAvatarPickPost200Response**](ApiV1UsersMeAvatarPickPost200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1VideoChannelsChannelHandleBannerDelete**
```swift
    open class func apiV1VideoChannelsChannelHandleBannerDelete(channelHandle: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete channel banner

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelHandle = "channelHandle_example" // String | The video channel handle

// Delete channel banner
VideoChannelsAPI.apiV1VideoChannelsChannelHandleBannerDelete(channelHandle: channelHandle) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1VideoChannelsChannelHandleBannerPickPost**
```swift
    open class func apiV1VideoChannelsChannelHandleBannerPickPost(channelHandle: String, bannerfile: URL? = nil, completion: @escaping (_ data: ApiV1VideoChannelsChannelHandleBannerPickPost200Response?, _ error: Error?) -> Void)
```

Update channel banner

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelHandle = "channelHandle_example" // String | The video channel handle
let bannerfile = URL(string: "https://example.com")! // URL | The file to upload. (optional)

// Update channel banner
VideoChannelsAPI.apiV1VideoChannelsChannelHandleBannerPickPost(channelHandle: channelHandle, bannerfile: bannerfile) { (response, error) in
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
 **bannerfile** | **URL** | The file to upload. | [optional] 

### Return type

[**ApiV1VideoChannelsChannelHandleBannerPickPost200Response**](ApiV1VideoChannelsChannelHandleBannerPickPost200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1VideoChannelsChannelHandleImportVideosPost**
```swift
    open class func apiV1VideoChannelsChannelHandleImportVideosPost(channelHandle: String, importVideosInChannelCreate: ImportVideosInChannelCreate? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Import videos in channel

Import a remote channel/playlist videos into a channel

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelHandle = "channelHandle_example" // String | The video channel handle
let importVideosInChannelCreate = ImportVideosInChannelCreate(externalChannelUrl: "externalChannelUrl_example", videoChannelSyncId: 123) // ImportVideosInChannelCreate |  (optional)

// Import videos in channel
VideoChannelsAPI.apiV1VideoChannelsChannelHandleImportVideosPost(channelHandle: channelHandle, importVideosInChannelCreate: importVideosInChannelCreate) { (response, error) in
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
 **importVideosInChannelCreate** | [**ImportVideosInChannelCreate**](ImportVideosInChannelCreate.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1VideoChannelsChannelHandleVideoPlaylistsGet**
```swift
    open class func apiV1VideoChannelsChannelHandleVideoPlaylistsGet(channelHandle: String, start: Int? = nil, count: Int? = nil, sort: String? = nil, playlistType: VideoPlaylistTypeSet? = nil, completion: @escaping (_ data: ApiV1VideoChannelsChannelHandleVideoPlaylistsGet200Response?, _ error: Error?) -> Void)
```

List playlists of a channel

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelHandle = "channelHandle_example" // String | The video channel handle
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)
let playlistType = VideoPlaylistTypeSet() // VideoPlaylistTypeSet |  (optional)

// List playlists of a channel
VideoChannelsAPI.apiV1VideoChannelsChannelHandleVideoPlaylistsGet(channelHandle: channelHandle, start: start, count: count, sort: sort, playlistType: playlistType) { (response, error) in
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
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort column | [optional] 
 **playlistType** | [**VideoPlaylistTypeSet**](.md) |  | [optional] 

### Return type

[**ApiV1VideoChannelsChannelHandleVideoPlaylistsGet200Response**](ApiV1VideoChannelsChannelHandleVideoPlaylistsGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delVideoChannel**
```swift
    open class func delVideoChannel(channelHandle: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a video channel

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelHandle = "channelHandle_example" // String | The video channel handle

// Delete a video channel
VideoChannelsAPI.delVideoChannel(channelHandle: channelHandle) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideoChannel**
```swift
    open class func getVideoChannel(channelHandle: String, completion: @escaping (_ data: VideoChannel?, _ error: Error?) -> Void)
```

Get a video channel

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelHandle = "channelHandle_example" // String | The video channel handle

// Get a video channel
VideoChannelsAPI.getVideoChannel(channelHandle: channelHandle) { (response, error) in
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

### Return type

[**VideoChannel**](VideoChannel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideoChannelFollowers**
```swift
    open class func getVideoChannelFollowers(channelHandle: String, start: Int? = nil, count: Int? = nil, sort: Sort_getVideoChannelFollowers? = nil, search: String? = nil, completion: @escaping (_ data: GetAccountFollowers200Response?, _ error: Error?) -> Void)
```

List followers of a video channel

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelHandle = "channelHandle_example" // String | The video channel handle
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort followers by criteria (optional)
let search = "search_example" // String | Plain text search, applied to various parts of the model depending on endpoint (optional)

// List followers of a video channel
VideoChannelsAPI.getVideoChannelFollowers(channelHandle: channelHandle, start: start, count: count, sort: sort, search: search) { (response, error) in
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
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort followers by criteria | [optional] 
 **search** | **String** | Plain text search, applied to various parts of the model depending on endpoint | [optional] 

### Return type

[**GetAccountFollowers200Response**](GetAccountFollowers200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

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
VideoChannelsAPI.getVideoChannelVideos(channelHandle: channelHandle, categoryOneOf: categoryOneOf, isLive: isLive, tagsOneOf: tagsOneOf, tagsAllOf: tagsAllOf, licenceOneOf: licenceOneOf, languageOneOf: languageOneOf, nsfw: nsfw, isLocal: isLocal, include: include, privacyOneOf: privacyOneOf, hasHLSFiles: hasHLSFiles, hasWebVideoFiles: hasWebVideoFiles, skipCount: skipCount, start: start, count: count, sort: sort, excludeAlreadyWatched: excludeAlreadyWatched) { (response, error) in
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

# **getVideoChannels**
```swift
    open class func getVideoChannels(start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: VideoChannelList?, _ error: Error?) -> Void)
```

List video channels

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// List video channels
VideoChannelsAPI.getVideoChannels(start: start, count: count, sort: sort) { (response, error) in
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
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort column | [optional] 

### Return type

[**VideoChannelList**](VideoChannelList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putVideoChannel**
```swift
    open class func putVideoChannel(channelHandle: String, videoChannelUpdate: VideoChannelUpdate? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a video channel

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelHandle = "channelHandle_example" // String | The video channel handle
let videoChannelUpdate = VideoChannelUpdate(displayName: 123, description: 123, support: 123, bulkVideosSupportUpdate: false) // VideoChannelUpdate |  (optional)

// Update a video channel
VideoChannelsAPI.putVideoChannel(channelHandle: channelHandle, videoChannelUpdate: videoChannelUpdate) { (response, error) in
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
 **videoChannelUpdate** | [**VideoChannelUpdate**](VideoChannelUpdate.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

