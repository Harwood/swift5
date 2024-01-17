//
// NotificationActorFollowFollowing.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NotificationActorFollowFollowing: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case account = "account"
        case channel = "channel"
        case instance = "instance"
    }
    public var type: ModelType?
    public var name: String?
    public var displayName: String?
    public var host: String?

    public init(type: ModelType? = nil, name: String? = nil, displayName: String? = nil, host: String? = nil) {
        self.type = type
        self.name = name
        self.displayName = displayName
        self.host = host
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case name
        case displayName
        case host
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(host, forKey: .host)
    }
}

