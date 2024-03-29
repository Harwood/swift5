//
// PutMirroredVideoRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PutMirroredVideoRequest: Codable, JSONEncodable, Hashable {

    static let videoIdRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public var videoId: Int

    public init(videoId: Int) {
        self.videoId = videoId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case videoId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(videoId, forKey: .videoId)
    }
}

