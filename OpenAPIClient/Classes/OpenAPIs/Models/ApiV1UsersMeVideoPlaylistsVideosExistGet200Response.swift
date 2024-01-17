//
// ApiV1UsersMeVideoPlaylistsVideosExistGet200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ApiV1UsersMeVideoPlaylistsVideosExistGet200Response: Codable, JSONEncodable, Hashable {

    public var videoId: [ApiV1UsersMeVideoPlaylistsVideosExistGet200ResponseVideoIdInner]?

    public init(videoId: [ApiV1UsersMeVideoPlaylistsVideosExistGet200ResponseVideoIdInner]? = nil) {
        self.videoId = videoId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case videoId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(videoId, forKey: .videoId)
    }
}
