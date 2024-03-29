//
// VideosForXMLInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VideosForXMLInner: Codable, JSONEncodable, Hashable {

    public enum Mediarating: String, Codable, CaseIterable {
        case nonadult = "nonadult"
        case adult = "adult"
    }
    /** video watch page URL */
    public var link: String?
    /** video canonical URL */
    public var guid: String?
    /** video publication date */
    public var pubDate: Date?
    /** video description */
    public var description: String?
    /** video description */
    public var contentencoded: String?
    /** publisher user name */
    public var dccreator: String?
    /** video category (MRSS) */
    public var mediacategory: Int?
    public var mediacommunity: VideosForXMLInnerMediaCommunity?
    public var mediaembed: VideosForXMLInnerMediaEmbed?
    public var mediaplayer: VideosForXMLInnerMediaPlayer?
    public var mediathumbnail: VideosForXMLInnerMediaThumbnail?
    /** see [media:title](https://www.rssboard.org/media-rss#media-title) (MRSS). We only use `plain` titles. */
    public var mediatitle: String?
    public var mediadescription: String?
    /** see [media:rating](https://www.rssboard.org/media-rss#media-rating) (MRSS) */
    public var mediarating: Mediarating?
    public var enclosure: VideosForXMLInnerEnclosure?
    /** list of streamable files for the video. see [media:peerLink](https://www.rssboard.org/media-rss#media-peerlink) and [media:content](https://www.rssboard.org/media-rss#media-content) or  (MRSS) */
    public var mediagroup: [VideosForXMLInnerMediaGroupInner]?

    public init(link: String? = nil, guid: String? = nil, pubDate: Date? = nil, description: String? = nil, contentencoded: String? = nil, dccreator: String? = nil, mediacategory: Int? = nil, mediacommunity: VideosForXMLInnerMediaCommunity? = nil, mediaembed: VideosForXMLInnerMediaEmbed? = nil, mediaplayer: VideosForXMLInnerMediaPlayer? = nil, mediathumbnail: VideosForXMLInnerMediaThumbnail? = nil, mediatitle: String? = nil, mediadescription: String? = nil, mediarating: Mediarating? = nil, enclosure: VideosForXMLInnerEnclosure? = nil, mediagroup: [VideosForXMLInnerMediaGroupInner]? = nil) {
        self.link = link
        self.guid = guid
        self.pubDate = pubDate
        self.description = description
        self.contentencoded = contentencoded
        self.dccreator = dccreator
        self.mediacategory = mediacategory
        self.mediacommunity = mediacommunity
        self.mediaembed = mediaembed
        self.mediaplayer = mediaplayer
        self.mediathumbnail = mediathumbnail
        self.mediatitle = mediatitle
        self.mediadescription = mediadescription
        self.mediarating = mediarating
        self.enclosure = enclosure
        self.mediagroup = mediagroup
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case link
        case guid
        case pubDate
        case description
        case contentencoded = "content:encoded"
        case dccreator = "dc:creator"
        case mediacategory = "media:category"
        case mediacommunity = "media:community"
        case mediaembed = "media:embed"
        case mediaplayer = "media:player"
        case mediathumbnail = "media:thumbnail"
        case mediatitle = "media:title"
        case mediadescription = "media:description"
        case mediarating = "media:rating"
        case enclosure
        case mediagroup = "media:group"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(link, forKey: .link)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(pubDate, forKey: .pubDate)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(contentencoded, forKey: .contentencoded)
        try container.encodeIfPresent(dccreator, forKey: .dccreator)
        try container.encodeIfPresent(mediacategory, forKey: .mediacategory)
        try container.encodeIfPresent(mediacommunity, forKey: .mediacommunity)
        try container.encodeIfPresent(mediaembed, forKey: .mediaembed)
        try container.encodeIfPresent(mediaplayer, forKey: .mediaplayer)
        try container.encodeIfPresent(mediathumbnail, forKey: .mediathumbnail)
        try container.encodeIfPresent(mediatitle, forKey: .mediatitle)
        try container.encodeIfPresent(mediadescription, forKey: .mediadescription)
        try container.encodeIfPresent(mediarating, forKey: .mediarating)
        try container.encodeIfPresent(enclosure, forKey: .enclosure)
        try container.encodeIfPresent(mediagroup, forKey: .mediagroup)
    }
}

