//
// Actor.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Actor: Codable, JSONEncodable, Hashable {

    static let idRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let nameRule = StringRule(minLength: 1, maxLength: 50, pattern: "/^[a-z0-9._]+$/")
    static let followingCountRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let followersCountRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public var id: Int?
    public var url: String?
    /** immutable name of the user, used to find or mention its actor */
    public var name: String?
    /** server on which the actor is resident */
    public var host: String?
    /** whether this actor's host allows redundancy of its videos */
    public var hostRedundancyAllowed: Bool?
    /** number of actors subscribed to by this actor, as seen by this instance */
    public var followingCount: Int?
    /** number of followers of this actor, as seen by this instance */
    public var followersCount: Int?
    public var createdAt: Date?
    public var updatedAt: Date?

    public init(id: Int? = nil, url: String? = nil, name: String? = nil, host: String? = nil, hostRedundancyAllowed: Bool? = nil, followingCount: Int? = nil, followersCount: Int? = nil, createdAt: Date? = nil, updatedAt: Date? = nil) {
        self.id = id
        self.url = url
        self.name = name
        self.host = host
        self.hostRedundancyAllowed = hostRedundancyAllowed
        self.followingCount = followingCount
        self.followersCount = followersCount
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case url
        case name
        case host
        case hostRedundancyAllowed
        case followingCount
        case followersCount
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(host, forKey: .host)
        try container.encodeIfPresent(hostRedundancyAllowed, forKey: .hostRedundancyAllowed)
        try container.encodeIfPresent(followingCount, forKey: .followingCount)
        try container.encodeIfPresent(followersCount, forKey: .followersCount)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
    }
}

