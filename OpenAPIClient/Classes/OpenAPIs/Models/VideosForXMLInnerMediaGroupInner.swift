//
// VideosForXMLInnerMediaGroupInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VideosForXMLInnerMediaGroupInner: Codable, JSONEncodable, Hashable {

    public var href: String?
    public var type: String?
    public var url: String?
    public var fileSize: Int?
    public var framerate: Int?
    public var duration: Int?
    public var height: Int?
    public var lang: String?

    public init(href: String? = nil, type: String? = nil, url: String? = nil, fileSize: Int? = nil, framerate: Int? = nil, duration: Int? = nil, height: Int? = nil, lang: String? = nil) {
        self.href = href
        self.type = type
        self.url = url
        self.fileSize = fileSize
        self.framerate = framerate
        self.duration = duration
        self.height = height
        self.lang = lang
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case href
        case type
        case url
        case fileSize
        case framerate
        case duration
        case height
        case lang
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(href, forKey: .href)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(fileSize, forKey: .fileSize)
        try container.encodeIfPresent(framerate, forKey: .framerate)
        try container.encodeIfPresent(duration, forKey: .duration)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(lang, forKey: .lang)
    }
}

