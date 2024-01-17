//
// ApiV1AbusesPost200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ApiV1AbusesPost200Response: Codable, JSONEncodable, Hashable {

    public var abuse: ApiV1AbusesPost200ResponseAbuse?

    public init(abuse: ApiV1AbusesPost200ResponseAbuse? = nil) {
        self.abuse = abuse
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case abuse
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(abuse, forKey: .abuse)
    }
}

