# SessionAPI

All URIs are relative to *https://peertube2.cpy.re*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOAuthClient**](SessionAPI.md#getoauthclient) | **GET** /api/v1/oauth-clients/local | Login prerequisite
[**getOAuthToken**](SessionAPI.md#getoauthtoken) | **POST** /api/v1/users/token | Login
[**revokeOAuthToken**](SessionAPI.md#revokeoauthtoken) | **POST** /api/v1/users/revoke-token | Logout


# **getOAuthClient**
```swift
    open class func getOAuthClient(completion: @escaping (_ data: OAuthClient?, _ error: Error?) -> Void)
```

Login prerequisite

You need to retrieve a client id and secret before [logging in](#operation/getOAuthToken).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Login prerequisite
SessionAPI.getOAuthClient() { (response, error) in
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

[**OAuthClient**](OAuthClient.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOAuthToken**
```swift
    open class func getOAuthToken(clientId: String? = nil, clientSecret: String? = nil, grantType: GrantType_getOAuthToken? = nil, username: String? = nil, password: String? = nil, refreshToken: String? = nil, completion: @escaping (_ data: GetOAuthToken200Response?, _ error: Error?) -> Void)
```

Login

With your [client id and secret](#operation/getOAuthClient), you can retrieve an access and refresh tokens.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String |  (optional)
let clientSecret = "clientSecret_example" // String |  (optional)
let grantType = "grantType_example" // String |  (optional) (default to .password)
let username = "username_example" // String | immutable name of the user, used to find or mention its actor (optional)
let password = "password_example" // String |  (optional)
let refreshToken = "refreshToken_example" // String |  (optional)

// Login
SessionAPI.getOAuthToken(clientId: clientId, clientSecret: clientSecret, grantType: grantType, username: username, password: password, refreshToken: refreshToken) { (response, error) in
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
 **clientId** | **String** |  | [optional] 
 **clientSecret** | **String** |  | [optional] 
 **grantType** | **String** |  | [optional] [default to .password]
 **username** | **String** | immutable name of the user, used to find or mention its actor | [optional] 
 **password** | **String** |  | [optional] 
 **refreshToken** | **String** |  | [optional] 

### Return type

[**GetOAuthToken200Response**](GetOAuthToken200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeOAuthToken**
```swift
    open class func revokeOAuthToken(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Logout

Revokes your access token and its associated refresh token, destroying your current session.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Logout
SessionAPI.revokeOAuthToken() { (response, error) in
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

