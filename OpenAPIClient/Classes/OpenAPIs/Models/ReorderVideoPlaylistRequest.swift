//
// ReorderVideoPlaylistRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ReorderVideoPlaylistRequest: Codable, JSONEncodable, Hashable {

    static let startPositionRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let insertAfterPositionRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let reorderLengthRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    /** Start position of the element to reorder */
    public var startPosition: Int
    /** New position for the block to reorder, to add the block before the first element */
    public var insertAfterPosition: Int
    /** How many element from `startPosition` to reorder */
    public var reorderLength: Int?

    public init(startPosition: Int, insertAfterPosition: Int, reorderLength: Int? = nil) {
        self.startPosition = startPosition
        self.insertAfterPosition = insertAfterPosition
        self.reorderLength = reorderLength
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case startPosition
        case insertAfterPosition
        case reorderLength
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(startPosition, forKey: .startPosition)
        try container.encode(insertAfterPosition, forKey: .insertAfterPosition)
        try container.encodeIfPresent(reorderLength, forKey: .reorderLength)
    }
}

