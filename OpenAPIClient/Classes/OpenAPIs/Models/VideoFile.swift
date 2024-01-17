//
// VideoFile.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VideoFile: Codable, JSONEncodable, Hashable {

    static let idRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let magnetUriRule = StringRule(minLength: nil, maxLength: nil, pattern: "/magnet:\\?xt=urn:[a-z0-9]+:[a-z0-9]{32}/i")
    public var id: Int?
    /** magnet URI allowing to resolve the video via BitTorrent without a metainfo file */
    public var magnetUri: String?
    public var resolution: VideoResolutionConstant?
    /** Video file size in bytes */
    public var size: Int?
    /** Direct URL of the torrent file */
    public var torrentUrl: String?
    /** URL endpoint that transfers the torrent file as an attachment (so that the browser opens a download dialog) */
    public var torrentDownloadUrl: String?
    /** Direct URL of the video */
    public var fileUrl: String?
    /** URL endpoint that transfers the video file as an attachment (so that the browser opens a download dialog) */
    public var fileDownloadUrl: String?
    /** Frames per second of the video file */
    public var fps: Double?
    /** URL dereferencing the output of ffprobe on the file */
    public var metadataUrl: String?

    public init(id: Int? = nil, magnetUri: String? = nil, resolution: VideoResolutionConstant? = nil, size: Int? = nil, torrentUrl: String? = nil, torrentDownloadUrl: String? = nil, fileUrl: String? = nil, fileDownloadUrl: String? = nil, fps: Double? = nil, metadataUrl: String? = nil) {
        self.id = id
        self.magnetUri = magnetUri
        self.resolution = resolution
        self.size = size
        self.torrentUrl = torrentUrl
        self.torrentDownloadUrl = torrentDownloadUrl
        self.fileUrl = fileUrl
        self.fileDownloadUrl = fileDownloadUrl
        self.fps = fps
        self.metadataUrl = metadataUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case magnetUri
        case resolution
        case size
        case torrentUrl
        case torrentDownloadUrl
        case fileUrl
        case fileDownloadUrl
        case fps
        case metadataUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(magnetUri, forKey: .magnetUri)
        try container.encodeIfPresent(resolution, forKey: .resolution)
        try container.encodeIfPresent(size, forKey: .size)
        try container.encodeIfPresent(torrentUrl, forKey: .torrentUrl)
        try container.encodeIfPresent(torrentDownloadUrl, forKey: .torrentDownloadUrl)
        try container.encodeIfPresent(fileUrl, forKey: .fileUrl)
        try container.encodeIfPresent(fileDownloadUrl, forKey: .fileDownloadUrl)
        try container.encodeIfPresent(fps, forKey: .fps)
        try container.encodeIfPresent(metadataUrl, forKey: .metadataUrl)
    }
}
