//
// VideoUserHistory.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VideoUserHistory: Codable, JSONEncodable, Hashable {

    public var currentTime: Int?

    public init(currentTime: Int? = nil) {
        self.currentTime = currentTime
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currentTime
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(currentTime, forKey: .currentTime)
    }
}

