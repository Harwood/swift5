//
// ApiV1PluginsNpmNameSettingsPutRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ApiV1PluginsNpmNameSettingsPutRequest: Codable, JSONEncodable, Hashable {

    public var settings: [String: AnyCodable]?

    public init(settings: [String: AnyCodable]? = nil) {
        self.settings = settings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case settings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(settings, forKey: .settings)
    }
}

