//
// ActorInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ActorInfo: Codable, JSONEncodable, Hashable {

    static let idRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public var id: Int?
    public var name: String?
    public var displayName: String?
    public var host: String?
    public var avatars: [ActorImage]?

    public init(id: Int? = nil, name: String? = nil, displayName: String? = nil, host: String? = nil, avatars: [ActorImage]? = nil) {
        self.id = id
        self.name = name
        self.displayName = displayName
        self.host = host
        self.avatars = avatars
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case displayName
        case host
        case avatars
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(host, forKey: .host)
        try container.encodeIfPresent(avatars, forKey: .avatars)
    }
}

