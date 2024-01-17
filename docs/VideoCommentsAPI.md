# VideoCommentsAPI

All URIs are relative to *https://peertube2.cpy.re*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1VideosIdCommentThreadsGet**](VideoCommentsAPI.md#apiv1videosidcommentthreadsget) | **GET** /api/v1/videos/{id}/comment-threads | List threads of a video
[**apiV1VideosIdCommentThreadsPost**](VideoCommentsAPI.md#apiv1videosidcommentthreadspost) | **POST** /api/v1/videos/{id}/comment-threads | Create a thread
[**apiV1VideosIdCommentThreadsThreadIdGet**](VideoCommentsAPI.md#apiv1videosidcommentthreadsthreadidget) | **GET** /api/v1/videos/{id}/comment-threads/{threadId} | Get a thread
[**apiV1VideosIdCommentsCommentIdDelete**](VideoCommentsAPI.md#apiv1videosidcommentscommentiddelete) | **DELETE** /api/v1/videos/{id}/comments/{commentId} | Delete a comment or a reply
[**apiV1VideosIdCommentsCommentIdPost**](VideoCommentsAPI.md#apiv1videosidcommentscommentidpost) | **POST** /api/v1/videos/{id}/comments/{commentId} | Reply to a thread of a video


# **apiV1VideosIdCommentThreadsGet**
```swift
    open class func apiV1VideosIdCommentThreadsGet(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, start: Int? = nil, count: Int? = nil, sort: Sort_apiV1VideosIdCommentThreadsGet? = nil, xPeertubeVideoPassword: String? = nil, completion: @escaping (_ data: CommentThreadResponse?, _ error: Error?) -> Void)
```

List threads of a video

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid
let start = 987 // Int | Offset used to paginate results (optional)
let count = 987 // Int | Number of items to return (optional) (default to 15)
let sort = "sort_example" // String | Sort comments by criteria (optional)
let xPeertubeVideoPassword = "xPeertubeVideoPassword_example" // String | Required on password protected video (optional)

// List threads of a video
VideoCommentsAPI.apiV1VideosIdCommentThreadsGet(id: id, start: start, count: count, sort: sort, xPeertubeVideoPassword: xPeertubeVideoPassword) { (response, error) in
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
 **start** | **Int** | Offset used to paginate results | [optional] 
 **count** | **Int** | Number of items to return | [optional] [default to 15]
 **sort** | **String** | Sort comments by criteria | [optional] 
 **xPeertubeVideoPassword** | **String** | Required on password protected video | [optional] 

### Return type

[**CommentThreadResponse**](CommentThreadResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1VideosIdCommentThreadsPost**
```swift
    open class func apiV1VideosIdCommentThreadsPost(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, apiV1VideosIdCommentThreadsPostRequest: ApiV1VideosIdCommentThreadsPostRequest? = nil, completion: @escaping (_ data: CommentThreadPostResponse?, _ error: Error?) -> Void)
```

Create a thread

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid
let apiV1VideosIdCommentThreadsPostRequest = _api_v1_videos__id__comment_threads_post_request(text: "TODO") // ApiV1VideosIdCommentThreadsPostRequest |  (optional)

// Create a thread
VideoCommentsAPI.apiV1VideosIdCommentThreadsPost(id: id, apiV1VideosIdCommentThreadsPostRequest: apiV1VideosIdCommentThreadsPostRequest) { (response, error) in
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
 **apiV1VideosIdCommentThreadsPostRequest** | [**ApiV1VideosIdCommentThreadsPostRequest**](ApiV1VideosIdCommentThreadsPostRequest.md) |  | [optional] 

### Return type

[**CommentThreadPostResponse**](CommentThreadPostResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1VideosIdCommentThreadsThreadIdGet**
```swift
    open class func apiV1VideosIdCommentThreadsThreadIdGet(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, threadId: Int, xPeertubeVideoPassword: String? = nil, completion: @escaping (_ data: VideoCommentThreadTree?, _ error: Error?) -> Void)
```

Get a thread

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid
let threadId = 987 // Int | The thread id (root comment id)
let xPeertubeVideoPassword = "xPeertubeVideoPassword_example" // String | Required on password protected video (optional)

// Get a thread
VideoCommentsAPI.apiV1VideosIdCommentThreadsThreadIdGet(id: id, threadId: threadId, xPeertubeVideoPassword: xPeertubeVideoPassword) { (response, error) in
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
 **threadId** | **Int** | The thread id (root comment id) | 
 **xPeertubeVideoPassword** | **String** | Required on password protected video | [optional] 

### Return type

[**VideoCommentThreadTree**](VideoCommentThreadTree.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1VideosIdCommentsCommentIdDelete**
```swift
    open class func apiV1VideosIdCommentsCommentIdDelete(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, commentId: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a comment or a reply

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid
let commentId = 987 // Int | The comment id

// Delete a comment or a reply
VideoCommentsAPI.apiV1VideosIdCommentsCommentIdDelete(id: id, commentId: commentId) { (response, error) in
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
 **commentId** | **Int** | The comment id | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1VideosIdCommentsCommentIdPost**
```swift
    open class func apiV1VideosIdCommentsCommentIdPost(id: ApiV1VideosOwnershipIdAcceptPostIdParameter, commentId: Int, xPeertubeVideoPassword: String? = nil, apiV1VideosIdCommentThreadsPostRequest: ApiV1VideosIdCommentThreadsPostRequest? = nil, completion: @escaping (_ data: CommentThreadPostResponse?, _ error: Error?) -> Void)
```

Reply to a thread of a video

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = _api_v1_videos_ownership__id__accept_post_id_parameter() // ApiV1VideosOwnershipIdAcceptPostIdParameter | The object id, uuid or short uuid
let commentId = 987 // Int | The comment id
let xPeertubeVideoPassword = "xPeertubeVideoPassword_example" // String | Required on password protected video (optional)
let apiV1VideosIdCommentThreadsPostRequest = _api_v1_videos__id__comment_threads_post_request(text: "TODO") // ApiV1VideosIdCommentThreadsPostRequest |  (optional)

// Reply to a thread of a video
VideoCommentsAPI.apiV1VideosIdCommentsCommentIdPost(id: id, commentId: commentId, xPeertubeVideoPassword: xPeertubeVideoPassword, apiV1VideosIdCommentThreadsPostRequest: apiV1VideosIdCommentThreadsPostRequest) { (response, error) in
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
 **commentId** | **Int** | The comment id | 
 **xPeertubeVideoPassword** | **String** | Required on password protected video | [optional] 
 **apiV1VideosIdCommentThreadsPostRequest** | [**ApiV1VideosIdCommentThreadsPostRequest**](ApiV1VideosIdCommentThreadsPostRequest.md) |  | [optional] 

### Return type

[**CommentThreadPostResponse**](CommentThreadPostResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

