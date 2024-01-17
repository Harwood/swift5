# MyUserAPI

All URIs are relative to *https://peertube2.cpy.re*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1UsersMeAvatarDelete**](MyUserAPI.md#apiv1usersmeavatardelete) | **DELETE** /api/v1/users/me/avatar | Delete my avatar
[**apiV1UsersMeAvatarPickPost**](MyUserAPI.md#apiv1usersmeavatarpickpost) | **POST** /api/v1/users/me/avatar/pick | Update my user avatar
[**apiV1UsersMeVideoQuotaUsedGet**](MyUserAPI.md#apiv1usersmevideoquotausedget) | **GET** /api/v1/users/me/video-quota-used | Get my user used quota
[**apiV1UsersMeVideosGet**](MyUserAPI.md#apiv1usersmevideosget) | **GET** /api/v1/users/me/videos | Get videos of my user
[**apiV1UsersMeVideosImportsGet**](MyUserAPI.md#apiv1usersmevideosimportsget) | **GET** /api/v1/users/me/videos/imports | Get video imports of my user
[**apiV1UsersMeVideosVideoIdRatingGet**](MyUserAPI.md#apiv1usersmevideosvideoidratingget) | **GET** /api/v1/users/me/videos/{videoId}/rating | Get rate of my user for a video
[**getMyAbuses**](MyUserAPI.md#getmyabuses) | **GET** /api/v1/users/me/abuses | List my abuses
[**getUserInfo**](MyUserAPI.md#getuserinfo) | **GET** /api/v1/users/me | Get my user information
[**putUserInfo**](MyUserAPI.md#putuserinfo) | **PUT** /api/v1/users/me | Update my user information


# **apiV1UsersMeAvatarDelete**
```swift
    open class func apiV1UsersMeAvatarDelete(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete my avatar

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Delete my avatar
MyUserAPI.apiV1UsersMeAvatarDelete() { (response, error) in
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

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1UsersMeAvatarPickPost**
```swift
    open class func apiV1UsersMeAvatarPickPost(avatarfile: URL? = nil, completion: @escaping (_ data: ApiV1UsersMeAvatarPickPost200Response?, _ error: Error?) -> Void)
```

Update my user avatar

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let avatarfile = URL(string: "https://example.com")! // URL | The file to upload (optional)

// Update my user avatar
MyUserAPI.apiV1UsersMeAvatarPickPost(avatarfile: avatarfile) { (response, error) in
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
 **avatarfile** | **URL** | The file to upload | [optional] 

### Return type

[**ApiV1UsersMeAvatarPickPost200Response**](ApiV1UsersMeAvatarPickPost200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1UsersMeVideoQuotaUsedGet**
```swift
    open class func apiV1UsersMeVideoQuotaUsedGet(completion: @escaping (_ data: ApiV1UsersMeVideoQuotaUsedGet200Response?, _ error: Error?) -> Void)
```

Get my user used quota

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get my user used quota
MyUserAPI.apiV1UsersMeVideoQuotaUsedGet() { (response, error) in
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

[**ApiV1UsersMeVideoQuotaUsedGet200Response**](ApiV1UsersMeVideoQuotaUsedGet200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1UsersMeVideosGet**
```swift
    open class func apiV1UsersMeVideosGet(start: Int? = nil, count: Int? = nil, sort: String? = nil, completion: @escaping (_ data: VideoListResponse?, _ error: Error?) -> Void)
```

Get videos of my user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)

// Get videos of my user
MyUserAPI.apiV1UsersMeVideosGet(start: start, count: count, sort: sort) { (response, error) in
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

[**VideoListResponse**](VideoListResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1UsersMeVideosImportsGet**
```swift
    open class func apiV1UsersMeVideosImportsGet(start: Int? = nil, count: Int? = nil, sort: String? = nil, targetUrl: String? = nil, videoChannelSyncId: Double? = nil, search: String? = nil, completion: @escaping (_ data: VideoImportsList?, _ error: Error?) -> Void)
```

Get video imports of my user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort column (optional)
let targetUrl = "targetUrl_example" // String | Filter on import target URL (optional)
let videoChannelSyncId = 987 // Double | Filter on imports created by a specific channel synchronization (optional)
let search = "search_example" // String | Search in video names (optional)

// Get video imports of my user
MyUserAPI.apiV1UsersMeVideosImportsGet(start: start, count: count, sort: sort, targetUrl: targetUrl, videoChannelSyncId: videoChannelSyncId, search: search) { (response, error) in
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
 **targetUrl** | **String** | Filter on import target URL | [optional] 
 **videoChannelSyncId** | **Double** | Filter on imports created by a specific channel synchronization | [optional] 
 **search** | **String** | Search in video names | [optional] 

### Return type

[**VideoImportsList**](VideoImportsList.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1UsersMeVideosVideoIdRatingGet**
```swift
    open class func apiV1UsersMeVideosVideoIdRatingGet(videoId: Int, completion: @escaping (_ data: GetMeVideoRating?, _ error: Error?) -> Void)
```

Get rate of my user for a video

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let videoId = 987 // Int | The video id

// Get rate of my user for a video
MyUserAPI.apiV1UsersMeVideosVideoIdRatingGet(videoId: videoId) { (response, error) in
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
 **videoId** | **Int** | The video id | 

### Return type

[**GetMeVideoRating**](GetMeVideoRating.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyAbuses**
```swift
    open class func getMyAbuses(id: Int? = nil, state: AbuseStateSet? = nil, sort: Sort_getMyAbuses? = nil, start: Int? = nil, count: Int? = nil, completion: @escaping (_ data: GetMyAbuses200Response?, _ error: Error?) -> Void)
```

List my abuses

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | only list the report with this id (optional)
let state = AbuseStateSet() // AbuseStateSet |  (optional)
let sort = "sort_example" // String | Sort abuses by criteria (optional)
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)

// List my abuses
MyUserAPI.getMyAbuses(id: id, state: state, sort: sort, start: start, count: count) { (response, error) in
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
 **id** | **Int** | only list the report with this id | [optional] 
 **state** | [**AbuseStateSet**](.md) |  | [optional] 
 **sort** | **String** | Sort abuses by criteria | [optional] 
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]

### Return type

[**GetMyAbuses200Response**](GetMyAbuses200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserInfo**
```swift
    open class func getUserInfo(completion: @escaping (_ data: [User]?, _ error: Error?) -> Void)
```

Get my user information

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get my user information
MyUserAPI.getUserInfo() { (response, error) in
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

[**[User]**](User.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putUserInfo**
```swift
    open class func putUserInfo(updateMe: UpdateMe, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update my user information

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let updateMe = UpdateMe(password: "password_example", currentPassword: "currentPassword_example", email: "TODO", displayName: "displayName_example", displayNSFW: "displayNSFW_example", p2pEnabled: false, autoPlayVideo: false, autoPlayNextVideo: false, autoPlayNextVideoPlaylist: false, videosHistoryEnabled: false, videoLanguages: ["videoLanguages_example"], theme: "theme_example", noInstanceConfigWarningModal: false, noAccountSetupWarningModal: false, noWelcomeModal: false) // UpdateMe | 

// Update my user information
MyUserAPI.putUserInfo(updateMe: updateMe) { (response, error) in
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
 **updateMe** | [**UpdateMe**](UpdateMe.md) |  | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

