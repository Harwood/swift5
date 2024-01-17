//
// ServerConfigFollowings.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServerConfigFollowings: Codable, JSONEncodable, Hashable {

    public var instance: ServerConfigFollowingsInstance?

    public init(instance: ServerConfigFollowingsInstance? = nil) {
        self.instance = instance
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case instance
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(instance, forKey: .instance)
    }
}
