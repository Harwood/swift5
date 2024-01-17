//
// ApiV1RunnersJobsJobUUIDUpdatePostRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ApiV1RunnersJobsJobUUIDUpdatePostRequest: Codable, JSONEncodable, Hashable {

    public var runnerToken: String
    public var jobToken: String
    /** Update job progression percentage (optional) */
    public var progress: Int?
    public var payload: ApiV1RunnersJobsJobUUIDUpdatePostRequestPayload?

    public init(runnerToken: String, jobToken: String, progress: Int? = nil, payload: ApiV1RunnersJobsJobUUIDUpdatePostRequestPayload? = nil) {
        self.runnerToken = runnerToken
        self.jobToken = jobToken
        self.progress = progress
        self.payload = payload
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case runnerToken
        case jobToken
        case progress
        case payload
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(runnerToken, forKey: .runnerToken)
        try container.encode(jobToken, forKey: .jobToken)
        try container.encodeIfPresent(progress, forKey: .progress)
        try container.encodeIfPresent(payload, forKey: .payload)
    }
}
