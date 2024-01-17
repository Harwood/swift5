//
// VideoImportStateConstant.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VideoImportStateConstant: Codable, JSONEncodable, Hashable {

    public enum Id: Int, Codable, CaseIterable {
        case _1 = 1
        case _2 = 2
        case _3 = 3
    }
    /** The video import state (Pending = `1`, Success = `2`, Failed = `3`) */
    public var id: Id?
    public var label: String?

    public init(id: Id? = nil, label: String? = nil) {
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

