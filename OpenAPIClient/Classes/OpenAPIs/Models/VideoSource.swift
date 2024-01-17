//
// VideoSource.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VideoSource: Codable, JSONEncodable, Hashable {

    public var filename: String?
    public var createdAt: Date?

    public init(filename: String? = nil, createdAt: Date? = nil) {
        self.filename = filename
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case filename
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(filename, forKey: .filename)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
    }
}
