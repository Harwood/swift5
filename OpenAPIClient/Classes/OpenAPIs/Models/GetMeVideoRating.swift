//
// GetMeVideoRating.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetMeVideoRating: Codable, JSONEncodable, Hashable {

    public enum Rating: String, Codable, CaseIterable {
        case like = "like"
        case dislike = "dislike"
        case _none = "none"
    }
    static let idRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public var id: Int
    /** Rating of the video */
    public var rating: Rating

    public init(id: Int, rating: Rating) {
        self.id = id
        self.rating = rating
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case rating
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(rating, forKey: .rating)
    }
}

