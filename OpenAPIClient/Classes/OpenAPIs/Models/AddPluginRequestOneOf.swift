//
// AddPluginRequestOneOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AddPluginRequestOneOf: Codable, JSONEncodable, Hashable {

    public var npmName: String

    public init(npmName: String) {
        self.npmName = npmName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case npmName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(npmName, forKey: .npmName)
    }
}

