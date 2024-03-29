//
// NotificationVideoImport.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NotificationVideoImport: Codable, JSONEncodable, Hashable {

    static let idRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public var id: Int?
    public var video: VideoInfo?
    public var torrentName: String?
    public var magnetUri: MagnetUri?
    public var targetUri: String?

    public init(id: Int? = nil, video: VideoInfo? = nil, torrentName: String? = nil, magnetUri: MagnetUri? = nil, targetUri: String? = nil) {
        self.id = id
        self.video = video
        self.torrentName = torrentName
        self.magnetUri = magnetUri
        self.targetUri = targetUri
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case video
        case torrentName
        case magnetUri
        case targetUri
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(video, forKey: .video)
        try container.encodeIfPresent(torrentName, forKey: .torrentName)
        try container.encodeIfPresent(magnetUri, forKey: .magnetUri)
        try container.encodeIfPresent(targetUri, forKey: .targetUri)
    }
}

