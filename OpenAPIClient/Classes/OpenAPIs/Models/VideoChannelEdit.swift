//
// VideoChannelEdit.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VideoChannelEdit: Codable, JSONEncodable, Hashable {

    /** Channel display name */
    public var displayName: AnyCodable?
    /** Channel description */
    public var description: AnyCodable?
    /** How to support/fund the channel */
    public var support: AnyCodable?

    public init(displayName: AnyCodable? = nil, description: AnyCodable? = nil, support: AnyCodable? = nil) {
        self.displayName = displayName
        self.description = description
        self.support = support
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case displayName
        case description
        case support
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(support, forKey: .support)
    }
}

