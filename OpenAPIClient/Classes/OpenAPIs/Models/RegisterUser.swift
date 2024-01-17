//
// RegisterUser.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RegisterUser: Codable, JSONEncodable, Hashable {

    static let usernameRule = StringRule(minLength: 1, maxLength: 50, pattern: "/^[a-z0-9._]+$/")
    static let passwordRule = StringRule(minLength: 6, maxLength: 255, pattern: nil)
    static let displayNameRule = StringRule(minLength: 1, maxLength: 120, pattern: nil)
    /** immutable name of the user, used to find or mention its actor */
    public var username: String
    public var password: String
    /** email of the user, used for login or service communications */
    public var email: String
    /** editable name of the user, displayed in its representations */
    public var displayName: String?
    public var channel: RegisterUserChannel?

    public init(username: String, password: String, email: String, displayName: String? = nil, channel: RegisterUserChannel? = nil) {
        self.username = username
        self.password = password
        self.email = email
        self.displayName = displayName
        self.channel = channel
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case username
        case password
        case email
        case displayName
        case channel
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(username, forKey: .username)
        try container.encode(password, forKey: .password)
        try container.encode(email, forKey: .email)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(channel, forKey: .channel)
    }
}

