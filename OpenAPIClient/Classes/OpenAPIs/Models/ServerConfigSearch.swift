//
// ServerConfigSearch.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServerConfigSearch: Codable, JSONEncodable, Hashable {

    public var remoteUri: ServerConfigSearchRemoteUri?

    public init(remoteUri: ServerConfigSearchRemoteUri? = nil) {
        self.remoteUri = remoteUri
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case remoteUri
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(remoteUri, forKey: .remoteUri)
    }
}

