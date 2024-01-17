//
// RegisterAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class RegisterAPI {

    /**
     Accept registration
     
     - parameter registrationId: (path) Registration ID 
     - parameter userRegistrationAcceptOrReject: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func acceptRegistration(registrationId: Int, userRegistrationAcceptOrReject: UserRegistrationAcceptOrReject? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return acceptRegistrationWithRequestBuilder(registrationId: registrationId, userRegistrationAcceptOrReject: userRegistrationAcceptOrReject).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Accept registration
     - POST /api/v1/users/registrations/{registrationId}/accept
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter registrationId: (path) Registration ID 
     - parameter userRegistrationAcceptOrReject: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func acceptRegistrationWithRequestBuilder(registrationId: Int, userRegistrationAcceptOrReject: UserRegistrationAcceptOrReject? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/users/registrations/{registrationId}/accept"
        let registrationIdPreEscape = "\(APIHelper.mapValueToPathItem(registrationId))"
        let registrationIdPostEscape = registrationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{registrationId}", with: registrationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userRegistrationAcceptOrReject)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete registration
     
     - parameter registrationId: (path) Registration ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteRegistration(registrationId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteRegistrationWithRequestBuilder(registrationId: registrationId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete registration
     - DELETE /api/v1/users/registrations/{registrationId}
     - Delete the registration entry. It will not remove the user associated with this registration (if any)
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter registrationId: (path) Registration ID 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteRegistrationWithRequestBuilder(registrationId: Int) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/users/registrations/{registrationId}"
        let registrationIdPreEscape = "\(APIHelper.mapValueToPathItem(registrationId))"
        let registrationIdPostEscape = registrationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{registrationId}", with: registrationIdPostEscape, options: .literal, range: nil)
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
     * enum for parameter sort
     */
    public enum Sort_listRegistrations: String, CaseIterable {
        case createdat = "-createdAt"
        case createdat2 = "createdAt"
        case state = "state"
        case state2 = "-state"
    }

    /**
     List registrations
     
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter search: (query)  (optional)
     - parameter sort: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listRegistrations(start: Int? = nil, count: Int? = nil, search: String? = nil, sort: Sort_listRegistrations? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ListRegistrations200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listRegistrationsWithRequestBuilder(start: start, count: count, search: search, sort: sort).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List registrations
     - GET /api/v1/users/registrations
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter start: (query) Offset used to paginate results (optional)
     - parameter count: (query) Number of items to return (optional, default to 15)
     - parameter search: (query)  (optional)
     - parameter sort: (query)  (optional)
     - returns: RequestBuilder<ListRegistrations200Response> 
     */
    open class func listRegistrationsWithRequestBuilder(start: Int? = nil, count: Int? = nil, search: String? = nil, sort: Sort_listRegistrations? = nil) -> RequestBuilder<ListRegistrations200Response> {
        let localVariablePath = "/api/v1/users/registrations"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "start": (wrappedValue: start?.encodeToJSON(), isExplode: true),
            "count": (wrappedValue: count?.encodeToJSON(), isExplode: true),
            "search": (wrappedValue: search?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListRegistrations200Response>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Register a user
     
     - parameter registerUser: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func registerUser(registerUser: RegisterUser, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return registerUserWithRequestBuilder(registerUser: registerUser).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Register a user
     - POST /api/v1/users/register
     - Signup has to be enabled and signup approval is not required
     - parameter registerUser: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func registerUserWithRequestBuilder(registerUser: RegisterUser) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/users/register"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: registerUser)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Reject registration
     
     - parameter registrationId: (path) Registration ID 
     - parameter userRegistrationAcceptOrReject: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func rejectRegistration(registrationId: Int, userRegistrationAcceptOrReject: UserRegistrationAcceptOrReject? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return rejectRegistrationWithRequestBuilder(registrationId: registrationId, userRegistrationAcceptOrReject: userRegistrationAcceptOrReject).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Reject registration
     - POST /api/v1/users/registrations/{registrationId}/reject
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - parameter registrationId: (path) Registration ID 
     - parameter userRegistrationAcceptOrReject: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func rejectRegistrationWithRequestBuilder(registrationId: Int, userRegistrationAcceptOrReject: UserRegistrationAcceptOrReject? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/users/registrations/{registrationId}/reject"
        let registrationIdPreEscape = "\(APIHelper.mapValueToPathItem(registrationId))"
        let registrationIdPostEscape = registrationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{registrationId}", with: registrationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userRegistrationAcceptOrReject)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Request registration
     
     - parameter userRegistrationRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func requestRegistration(userRegistrationRequest: UserRegistrationRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: UserRegistration?, _ error: Error?) -> Void)) -> RequestTask {
        return requestRegistrationWithRequestBuilder(userRegistrationRequest: userRegistrationRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Request registration
     - POST /api/v1/users/registrations/request
     - Signup has to be enabled and require approval on the instance
     - parameter userRegistrationRequest: (body)  (optional)
     - returns: RequestBuilder<UserRegistration> 
     */
    open class func requestRegistrationWithRequestBuilder(userRegistrationRequest: UserRegistrationRequest? = nil) -> RequestBuilder<UserRegistration> {
        let localVariablePath = "/api/v1/users/registrations/request"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userRegistrationRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserRegistration>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Resend verification link to registration email
     
     - parameter resendEmailToVerifyRegistrationRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func resendEmailToVerifyRegistration(resendEmailToVerifyRegistrationRequest: ResendEmailToVerifyRegistrationRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return resendEmailToVerifyRegistrationWithRequestBuilder(resendEmailToVerifyRegistrationRequest: resendEmailToVerifyRegistrationRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Resend verification link to registration email
     - POST /api/v1/users/registrations/ask-send-verify-email
     - parameter resendEmailToVerifyRegistrationRequest: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func resendEmailToVerifyRegistrationWithRequestBuilder(resendEmailToVerifyRegistrationRequest: ResendEmailToVerifyRegistrationRequest? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/users/registrations/ask-send-verify-email"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: resendEmailToVerifyRegistrationRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Resend user verification link
     
     - parameter resendEmailToVerifyUserRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func resendEmailToVerifyUser(resendEmailToVerifyUserRequest: ResendEmailToVerifyUserRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return resendEmailToVerifyUserWithRequestBuilder(resendEmailToVerifyUserRequest: resendEmailToVerifyUserRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Resend user verification link
     - POST /api/v1/users/ask-send-verify-email
     - parameter resendEmailToVerifyUserRequest: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func resendEmailToVerifyUserWithRequestBuilder(resendEmailToVerifyUserRequest: ResendEmailToVerifyUserRequest? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/users/ask-send-verify-email"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: resendEmailToVerifyUserRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Verify a registration email
     
     - parameter registrationId: (path) Registration ID 
     - parameter verifyRegistrationEmailRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func verifyRegistrationEmail(registrationId: Int, verifyRegistrationEmailRequest: VerifyRegistrationEmailRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return verifyRegistrationEmailWithRequestBuilder(registrationId: registrationId, verifyRegistrationEmailRequest: verifyRegistrationEmailRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Verify a registration email
     - POST /api/v1/users/registrations/{registrationId}/verify-email
     - Following a user registration request, the user will receive an email asking to click a link containing a secret. 
     - parameter registrationId: (path) Registration ID 
     - parameter verifyRegistrationEmailRequest: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func verifyRegistrationEmailWithRequestBuilder(registrationId: Int, verifyRegistrationEmailRequest: VerifyRegistrationEmailRequest? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/users/registrations/{registrationId}/verify-email"
        let registrationIdPreEscape = "\(APIHelper.mapValueToPathItem(registrationId))"
        let registrationIdPostEscape = registrationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{registrationId}", with: registrationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: verifyRegistrationEmailRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Verify a user
     
     - parameter id: (path) Entity id 
     - parameter verifyUserRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func verifyUser(id: Int, verifyUserRequest: VerifyUserRequest? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return verifyUserWithRequestBuilder(id: id, verifyUserRequest: verifyUserRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Verify a user
     - POST /api/v1/users/{id}/verify-email
     - Following a user registration, the new user will receive an email asking to click a link containing a secret. This endpoint can also be used to verify a new email set in the user account. 
     - parameter id: (path) Entity id 
     - parameter verifyUserRequest: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func verifyUserWithRequestBuilder(id: Int, verifyUserRequest: VerifyUserRequest? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/users/{id}/verify-email"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: verifyUserRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}