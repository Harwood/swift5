//
// VideoScheduledUpdate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VideoScheduledUpdate: Codable, JSONEncodable, Hashable {

    public var privacy: VideoPrivacySet?
    /** When to update the video */
    public var updateAt: Date

    public init(privacy: VideoPrivacySet? = nil, updateAt: Date) {
        self.privacy = privacy
        self.updateAt = updateAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case privacy
        case updateAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(privacy, forKey: .privacy)
        try container.encode(updateAt, forKey: .updateAt)
    }
}

