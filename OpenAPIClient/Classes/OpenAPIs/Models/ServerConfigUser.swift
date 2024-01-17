//
// ServerConfigUser.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServerConfigUser: Codable, JSONEncodable, Hashable {

    public var videoQuota: Int?
    public var videoQuotaDaily: Int?

    public init(videoQuota: Int? = nil, videoQuotaDaily: Int? = nil) {
        self.videoQuota = videoQuota
        self.videoQuotaDaily = videoQuotaDaily
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case videoQuota
        case videoQuotaDaily
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(videoQuota, forKey: .videoQuota)
        try container.encodeIfPresent(videoQuotaDaily, forKey: .videoQuotaDaily)
    }
}

