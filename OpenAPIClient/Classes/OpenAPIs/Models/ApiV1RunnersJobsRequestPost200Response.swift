//
// ApiV1RunnersJobsRequestPost200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ApiV1RunnersJobsRequestPost200Response: Codable, JSONEncodable, Hashable {

    public var availableJobs: [ApiV1RunnersJobsRequestPost200ResponseAvailableJobsInner]?

    public init(availableJobs: [ApiV1RunnersJobsRequestPost200ResponseAvailableJobsInner]? = nil) {
        self.availableJobs = availableJobs
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case availableJobs
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(availableJobs, forKey: .availableJobs)
    }
}
