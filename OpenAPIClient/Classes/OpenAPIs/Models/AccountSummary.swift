//
// AccountSummary.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AccountSummary: Codable, JSONEncodable, Hashable {

    public var id: Int?
    public var name: String?
    public var displayName: String?
    public var url: String?
    public var host: String?
    public var avatars: [ActorImage]?

    public init(id: Int? = nil, name: String? = nil, displayName: String? = nil, url: String? = nil, host: String? = nil, avatars: [ActorImage]? = nil) {
        self.id = id
        self.name = name
        self.displayName = displayName
        self.url = url
        self.host = host
        self.avatars = avatars
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case displayName
        case url
        case host
        case avatars
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(host, forKey: .host)
        try container.encodeIfPresent(avatars, forKey: .avatars)
    }
}

