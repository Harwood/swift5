//
// VideoRating.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VideoRating: Codable, JSONEncodable, Hashable {

    public enum Rating: String, Codable, CaseIterable {
        case like = "like"
        case dislike = "dislike"
        case _none = "none"
    }
    public var video: Video
    /** Rating of the video */
    public var rating: Rating

    public init(video: Video, rating: Rating) {
        self.video = video
        self.rating = rating
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case video
        case rating
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(video, forKey: .video)
        try container.encode(rating, forKey: .rating)
    }
}

