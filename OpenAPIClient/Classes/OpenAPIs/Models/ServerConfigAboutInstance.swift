//
// ServerConfigAboutInstance.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServerConfigAboutInstance: Codable, JSONEncodable, Hashable {

    public var name: String?
    public var shortDescription: String?
    public var description: String?
    public var terms: String?

    public init(name: String? = nil, shortDescription: String? = nil, description: String? = nil, terms: String? = nil) {
        self.name = name
        self.shortDescription = shortDescription
        self.description = description
        self.terms = terms
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case shortDescription
        case description
        case terms
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(shortDescription, forKey: .shortDescription)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(terms, forKey: .terms)
    }
}

