//
// AbuseStateConstant.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AbuseStateConstant: Codable, JSONEncodable, Hashable {

    public var id: AbuseStateSet?
    public var label: String?

    public init(id: AbuseStateSet? = nil, label: String? = nil) {
        self.id = id
        self.label = label
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case label
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(label, forKey: .label)
    }
}

