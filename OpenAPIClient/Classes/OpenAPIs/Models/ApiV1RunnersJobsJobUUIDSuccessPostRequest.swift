//
// ApiV1RunnersJobsJobUUIDSuccessPostRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ApiV1RunnersJobsJobUUIDSuccessPostRequest: Codable, JSONEncodable, Hashable {

    public var runnerToken: String
    public var jobToken: String
    public var payload: ApiV1RunnersJobsJobUUIDSuccessPostRequestPayload

    public init(runnerToken: String, jobToken: String, payload: ApiV1RunnersJobsJobUUIDSuccessPostRequestPayload) {
        self.runnerToken = runnerToken
        self.jobToken = jobToken
        self.payload = payload
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case runnerToken
        case jobToken
        case payload
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(runnerToken, forKey: .runnerToken)
        try container.encode(jobToken, forKey: .jobToken)
        try container.encode(payload, forKey: .payload)
    }
}

