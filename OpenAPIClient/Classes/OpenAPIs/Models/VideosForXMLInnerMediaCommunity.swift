//
// VideosForXMLInnerMediaCommunity.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** see [media:community](https://www.rssboard.org/media-rss#media-community) (MRSS) */
public struct VideosForXMLInnerMediaCommunity: Codable, JSONEncodable, Hashable {

    public var mediastatistics: VideosForXMLInnerMediaCommunityMediaStatistics?

    public init(mediastatistics: VideosForXMLInnerMediaCommunityMediaStatistics? = nil) {
        self.mediastatistics = mediastatistics
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mediastatistics = "media:statistics"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(mediastatistics, forKey: .mediastatistics)
    }
}

