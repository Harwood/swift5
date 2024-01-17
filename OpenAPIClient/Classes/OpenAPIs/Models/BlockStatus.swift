//
// BlockStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BlockStatus: Codable, JSONEncodable, Hashable {

    public var accounts: [String: BlockStatusAccountsValue]?
    public var hosts: [String: BlockStatusHostsValue]?

    public init(accounts: [String: BlockStatusAccountsValue]? = nil, hosts: [String: BlockStatusHostsValue]? = nil) {
        self.accounts = accounts
        self.hosts = hosts
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accounts
        case hosts
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(accounts, forKey: .accounts)
        try container.encodeIfPresent(hosts, forKey: .hosts)
    }
}
