//
// VideoPasswordList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VideoPasswordList: Codable, JSONEncodable, Hashable {

    public var total: Int?
    public var data: [VideoPassword]?

    public init(total: Int? = nil, data: [VideoPassword]? = nil) {
        self.total = total
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case total
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(total, forKey: .total)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

