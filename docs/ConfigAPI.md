# ConfigAPI

All URIs are relative to *https://peertube2.cpy.re*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delCustomConfig**](ConfigAPI.md#delcustomconfig) | **DELETE** /api/v1/config/custom | Delete instance runtime configuration
[**getAbout**](ConfigAPI.md#getabout) | **GET** /api/v1/config/about | Get instance \&quot;About\&quot; information
[**getConfig**](ConfigAPI.md#getconfig) | **GET** /api/v1/config | Get instance public configuration
[**getCustomConfig**](ConfigAPI.md#getcustomconfig) | **GET** /api/v1/config/custom | Get instance runtime configuration
[**putCustomConfig**](ConfigAPI.md#putcustomconfig) | **PUT** /api/v1/config/custom | Set instance runtime configuration


# **delCustomConfig**
```swift
    open class func delCustomConfig(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete instance runtime configuration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Delete instance runtime configuration
ConfigAPI.delCustomConfig() { (response, error) in
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

# **getAbout**
```swift
    open class func getAbout(completion: @escaping (_ data: ServerConfigAbout?, _ error: Error?) -> Void)
```

Get instance \"About\" information

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get instance \"About\" information
ConfigAPI.getAbout() { (response, error) in
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

[**ServerConfigAbout**](ServerConfigAbout.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfig**
```swift
    open class func getConfig(completion: @escaping (_ data: ServerConfig?, _ error: Error?) -> Void)
```

Get instance public configuration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get instance public configuration
ConfigAPI.getConfig() { (response, error) in
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

[**ServerConfig**](ServerConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomConfig**
```swift
    open class func getCustomConfig(completion: @escaping (_ data: ServerConfigCustom?, _ error: Error?) -> Void)
```

Get instance runtime configuration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get instance runtime configuration
ConfigAPI.getCustomConfig() { (response, error) in
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

[**ServerConfigCustom**](ServerConfigCustom.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putCustomConfig**
```swift
    open class func putCustomConfig(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set instance runtime configuration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Set instance runtime configuration
ConfigAPI.putCustomConfig() { (response, error) in
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

