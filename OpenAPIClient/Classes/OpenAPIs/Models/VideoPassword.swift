//
// VideoPassword.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VideoPassword: Codable, JSONEncodable, Hashable {

    static let idRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let passwordRule = StringRule(minLength: 2, maxLength: nil, pattern: nil)
    static let videoIdRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public var id: Int?
    public var password: String?
    public var videoId: Int?

    public init(id: Int? = nil, password: String? = nil, videoId: Int? = nil) {
        self.id = id
        self.password = password
        self.videoId = videoId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case password
        case videoId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(videoId, forKey: .videoId)
    }
}

