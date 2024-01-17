//
// VideoCommentThreadTree.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VideoCommentThreadTree: Codable, JSONEncodable, Hashable {

    public var comment: VideoComment?
    public var children: [VideoCommentThreadTree]?

    public init(comment: VideoComment? = nil, children: [VideoCommentThreadTree]? = nil) {
        self.comment = comment
        self.children = children
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case comment
        case children
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(children, forKey: .children)
    }
}

