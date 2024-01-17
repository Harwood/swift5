//
// RegisterUserChannel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** channel base information used to create the first channel of the user */
public struct RegisterUserChannel: Codable, JSONEncodable, Hashable {

    static let nameRule = StringRule(minLength: 1, maxLength: 50, pattern: "/^[a-zA-Z0-9\\\\-_.:]+$/")
    /** immutable name of the channel, used to interact with its actor */
    public var name: String?
    public var displayName: String?

    public init(name: String? = nil, displayName: String? = nil) {
        self.name = name
        self.displayName = displayName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case displayName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(displayName, forKey: .displayName)
    }
}
