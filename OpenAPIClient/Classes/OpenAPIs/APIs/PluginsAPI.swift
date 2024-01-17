//
// PluginsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PluginsAPI {

    /**
     Install a plugin
     
     - parameter addPluginRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func addPlugin(addPluginRequest: AddPluginRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return addPluginWithRequestBuilder(addPluginRequest: addPluginRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Install a plugin
     - POST /api/v1/plugins/install
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter addPluginRequest: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func addPluginWithRequestBuilder(addPluginRequest: AddPluginRequest? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/plugins/install"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: addPluginRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get a plugin's public settings
     
     - parameter npmName: (path) name of the plugin/theme on npmjs.com or in its package.json 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1PluginsNpmNamePublicSettingsGet(npmName: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [String: AnyCodable]?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1PluginsNpmNamePublicSettingsGetWithRequestBuilder(npmName: npmName).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a plugin's public settings
     - GET /api/v1/plugins/{npmName}/public-settings
     - parameter npmName: (path) name of the plugin/theme on npmjs.com or in its package.json 
     - returns: RequestBuilder<[String: AnyCodable]> 
     */
    open class func apiV1PluginsNpmNamePublicSettingsGetWithRequestBuilder(npmName: String) -> RequestBuilder<[String: AnyCodable]> {
        var localVariablePath = "/api/v1/plugins/{npmName}/public-settings"
        let npmNamePreEscape = "\(APIHelper.mapValueToPathItem(npmName))"
        let npmNamePostEscape = npmNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{npmName}", with: npmNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[String: AnyCodable]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get a plugin's registered settings
     
     - parameter npmName: (path) name of the plugin/theme on npmjs.com or in its package.json 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1PluginsNpmNameRegisteredSettingsGet(npmName: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [String: AnyCodable]?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1PluginsNpmNameRegisteredSettingsGetWithRequestBuilder(npmName: npmName).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a plugin's registered settings
     - GET /api/v1/plugins/{npmName}/registered-settings
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter npmName: (path) name of the plugin/theme on npmjs.com or in its package.json 
     - returns: RequestBuilder<[String: AnyCodable]> 
     */
    open class func apiV1PluginsNpmNameRegisteredSettingsGetWithRequestBuilder(npmName: String) -> RequestBuilder<[String: AnyCodable]> {
        var localVariablePath = "/api/v1/plugins/{npmName}/registered-settings"
        let npmNamePreEscape = "\(APIHelper.mapValueToPathItem(npmName))"
        let npmNamePostEscape = npmNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{npmName}", with: npmNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[String: AnyCodable]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Set a plugin's settings
     
     - parameter npmName: (path) name of the plugin/theme on npmjs.com or in its package.json 
     - parameter apiV1PluginsNpmNameSettingsPutRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apiV1PluginsNpmNameSettingsPut(npmName: String, apiV1PluginsNpmNameSettingsPutRequest: ApiV1PluginsNpmNameSettingsPutRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return apiV1PluginsNpmNameSettingsPutWithRequestBuilder(npmName: npmName, apiV1PluginsNpmNameSettingsPutRequest: apiV1PluginsNpmNameSettingsPutRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Set a plugin's settings
     - PUT /api/v1/plugins/{npmName}/settings
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter npmName: (path) name of the plugin/theme on npmjs.com or in its package.json 
     - parameter apiV1PluginsNpmNameSettingsPutRequest: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func apiV1PluginsNpmNameSettingsPutWithRequestBuilder(npmName: String, apiV1PluginsNpmNameSettingsPutRequest: ApiV1PluginsNpmNameSettingsPutRequest? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/plugins/{npmName}/settings"
        let npmNamePreEscape = "\(APIHelper.mapValueToPathItem(npmName))"
        let npmNamePostEscape = npmNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{npmName}", with: npmNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: apiV1PluginsNpmNameSettingsPutRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     List available plugins
     
     - parameter search: (query)  (optional)
     - parameter pluginType: (query)  (optional)
     - parameter currentPeerTubeEngine: (query)  (optional)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getAvailablePlugins(search: String? = nil, pluginType: Int? = nil, currentPeerTubeEngine: String? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: PluginResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return getAvailablePluginsWithRequestBuilder(search: search, pluginType: pluginType, currentPeerTubeEngine: currentPeerTubeEngine, start: start, count: count, sort: sort).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List available plugins
     - GET /api/v1/plugins/available
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter search: (query)  (optional)
     - parameter pluginType: (query)  (optional)
     - parameter currentPeerTubeEngine: (query)  (optional)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - returns: RequestBuilder<PluginResponse> 
     */
    open class func getAvailablePluginsWithRequestBuilder(search: String? = nil, pluginType: Int? = nil, currentPeerTubeEngine: String? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil) -> RequestBuilder<PluginResponse> {
        let localVariablePath = "/api/v1/plugins/available"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "search": (wrappedValue: search?.encodeToJSON(), isExplode: true),
            "pluginType": (wrappedValue: pluginType?.encodeToJSON(), isExplode: true),
            "currentPeerTubeEngine": (wrappedValue: currentPeerTubeEngine?.encodeToJSON(), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PluginResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get a plugin
     
     - parameter npmName: (path) name of the plugin/theme on npmjs.com or in its package.json 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getPlugin(npmName: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Plugin?, _ error: Error?) -> Void)) -> RequestTask {
        return getPluginWithRequestBuilder(npmName: npmName).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a plugin
     - GET /api/v1/plugins/{npmName}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter npmName: (path) name of the plugin/theme on npmjs.com or in its package.json 
     - returns: RequestBuilder<Plugin> 
     */
    open class func getPluginWithRequestBuilder(npmName: String) -> RequestBuilder<Plugin> {
        var localVariablePath = "/api/v1/plugins/{npmName}"
        let npmNamePreEscape = "\(APIHelper.mapValueToPathItem(npmName))"
        let npmNamePostEscape = npmNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{npmName}", with: npmNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Plugin>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     List plugins
     
     - parameter pluginType: (query)  (optional)
     - parameter uninstalled: (query)  (optional)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getPlugins(pluginType: Int? = nil, uninstalled: Bool? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: PluginResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return getPluginsWithRequestBuilder(pluginType: pluginType, uninstalled: uninstalled, start: start, count: count, sort: sort).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List plugins
     - GET /api/v1/plugins
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter pluginType: (query)  (optional)
     - parameter uninstalled: (query)  (optional)
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter sort: (query) Sort column (optional)
     - returns: RequestBuilder<PluginResponse> 
     */
    open class func getPluginsWithRequestBuilder(pluginType: Int? = nil, uninstalled: Bool? = nil, start: Int? = nil, count: Int? = nil, sort: String? = nil) -> RequestBuilder<PluginResponse> {
        let localVariablePath = "/api/v1/plugins"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "pluginType": (wrappedValue: pluginType?.encodeToJSON(), isExplode: true),
            "uninstalled": (wrappedValue: uninstalled?.encodeToJSON(), isExplode: true),
            "start": (wrappedValue: start?.encodeToJSON(), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PluginResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Uninstall a plugin
     
     - parameter uninstallPluginRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func uninstallPlugin(uninstallPluginRequest: UninstallPluginRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return uninstallPluginWithRequestBuilder(uninstallPluginRequest: uninstallPluginRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Uninstall a plugin
     - POST /api/v1/plugins/uninstall
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter uninstallPluginRequest: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func uninstallPluginWithRequestBuilder(uninstallPluginRequest: UninstallPluginRequest? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/plugins/uninstall"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: uninstallPluginRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update a plugin
     
     - parameter addPluginRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updatePlugin(addPluginRequest: AddPluginRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return updatePluginWithRequestBuilder(addPluginRequest: addPluginRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update a plugin
     - POST /api/v1/plugins/update
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter addPluginRequest: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func updatePluginWithRequestBuilder(addPluginRequest: AddPluginRequest? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/plugins/update"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: addPluginRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}