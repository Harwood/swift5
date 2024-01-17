//
// UserWithStats.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserWithStats: Codable, JSONEncodable, Hashable {

    static let idRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let usernameRule = StringRule(minLength: 1, maxLength: 50, pattern: "/^[a-z0-9._]+$/")
    public var account: Account?
    /** Automatically start playing the upcoming video after the currently playing video */
    public var autoPlayNextVideo: Bool?
    /** Automatically start playing the video on the playlist after the currently playing video */
    public var autoPlayNextVideoPlaylist: Bool?
    /** Automatically start playing the video on the watch page */
    public var autoPlayVideo: Bool?
    public var blocked: Bool?
    public var blockedReason: String?
    public var createdAt: String?
    /** The user email */
    public var email: String?
    /** Has the user confirmed their email address? */
    public var emailVerified: Bool?
    public var id: Int?
    /** Auth plugin to use to authenticate the user */
    public var pluginAuth: String?
    public var lastLoginDate: Date?
    public var noInstanceConfigWarningModal: Bool?
    public var noAccountSetupWarningModal: Bool?
    public var noWelcomeModal: Bool?
    public var nsfwPolicy: NSFWPolicy?
    public var role: UserRole?
    /** Theme enabled by this user */
    public var theme: String?
    /** immutable name of the user, used to find or mention its actor */
    public var username: String?
    public var videoChannels: [VideoChannel]?
    /** The user video quota in bytes */
    public var videoQuota: Int?
    /** The user daily video quota in bytes */
    public var videoQuotaDaily: Int?
    /** Enable P2P in the player */
    public var p2pEnabled: Bool?
    /** Count of videos published */
    public var videosCount: Int?
    /** Count of reports/abuses of which the user is a target */
    public var abusesCount: Int?
    /** Count of reports/abuses created by the user and accepted/acted upon by the moderation team */
    public var abusesAcceptedCount: Int?
    /** Count of reports/abuses created by the user */
    public var abusesCreatedCount: Int?
    /** Count of comments published */
    public var videoCommentsCount: Int?

    public init(account: Account? = nil, autoPlayNextVideo: Bool? = nil, autoPlayNextVideoPlaylist: Bool? = nil, autoPlayVideo: Bool? = nil, blocked: Bool? = nil, blockedReason: String? = nil, createdAt: String? = nil, email: String? = nil, emailVerified: Bool? = nil, id: Int? = nil, pluginAuth: String? = nil, lastLoginDate: Date? = nil, noInstanceConfigWarningModal: Bool? = nil, noAccountSetupWarningModal: Bool? = nil, noWelcomeModal: Bool? = nil, nsfwPolicy: NSFWPolicy? = nil, role: UserRole? = nil, theme: String? = nil, username: String? = nil, videoChannels: [VideoChannel]? = nil, videoQuota: Int? = nil, videoQuotaDaily: Int? = nil, p2pEnabled: Bool? = nil, videosCount: Int? = nil, abusesCount: Int? = nil, abusesAcceptedCount: Int? = nil, abusesCreatedCount: Int? = nil, videoCommentsCount: Int? = nil) {
        self.account = account
        self.autoPlayNextVideo = autoPlayNextVideo
        self.autoPlayNextVideoPlaylist = autoPlayNextVideoPlaylist
        self.autoPlayVideo = autoPlayVideo
        self.blocked = blocked
        self.blockedReason = blockedReason
        self.createdAt = createdAt
        self.email = email
        self.emailVerified = emailVerified
        self.id = id
        self.pluginAuth = pluginAuth
        self.lastLoginDate = lastLoginDate
        self.noInstanceConfigWarningModal = noInstanceConfigWarningModal
        self.noAccountSetupWarningModal = noAccountSetupWarningModal
        self.noWelcomeModal = noWelcomeModal
        self.nsfwPolicy = nsfwPolicy
        self.role = role
        self.theme = theme
        self.username = username
        self.videoChannels = videoChannels
        self.videoQuota = videoQuota
        self.videoQuotaDaily = videoQuotaDaily
        self.p2pEnabled = p2pEnabled
        self.videosCount = videosCount
        self.abusesCount = abusesCount
        self.abusesAcceptedCount = abusesAcceptedCount
        self.abusesCreatedCount = abusesCreatedCount
        self.videoCommentsCount = videoCommentsCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case account
        case autoPlayNextVideo
        case autoPlayNextVideoPlaylist
        case autoPlayVideo
        case blocked
        case blockedReason
        case createdAt
        case email
        case emailVerified
        case id
        case pluginAuth
        case lastLoginDate
        case noInstanceConfigWarningModal
        case noAccountSetupWarningModal
        case noWelcomeModal
        case nsfwPolicy
        case role
        case theme
        case username
        case videoChannels
        case videoQuota
        case videoQuotaDaily
        case p2pEnabled
        case videosCount
        case abusesCount
        case abusesAcceptedCount
        case abusesCreatedCount
        case videoCommentsCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(account, forKey: .account)
        try container.encodeIfPresent(autoPlayNextVideo, forKey: .autoPlayNextVideo)
        try container.encodeIfPresent(autoPlayNextVideoPlaylist, forKey: .autoPlayNextVideoPlaylist)
        try container.encodeIfPresent(autoPlayVideo, forKey: .autoPlayVideo)
        try container.encodeIfPresent(blocked, forKey: .blocked)
        try container.encodeIfPresent(blockedReason, forKey: .blockedReason)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(emailVerified, forKey: .emailVerified)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(pluginAuth, forKey: .pluginAuth)
        try container.encodeIfPresent(lastLoginDate, forKey: .lastLoginDate)
        try container.encodeIfPresent(noInstanceConfigWarningModal, forKey: .noInstanceConfigWarningModal)
        try container.encodeIfPresent(noAccountSetupWarningModal, forKey: .noAccountSetupWarningModal)
        try container.encodeIfPresent(noWelcomeModal, forKey: .noWelcomeModal)
        try container.encodeIfPresent(nsfwPolicy, forKey: .nsfwPolicy)
        try container.encodeIfPresent(role, forKey: .role)
        try container.encodeIfPresent(theme, forKey: .theme)
        try container.encodeIfPresent(username, forKey: .username)
        try container.encodeIfPresent(videoChannels, forKey: .videoChannels)
        try container.encodeIfPresent(videoQuota, forKey: .videoQuota)
        try container.encodeIfPresent(videoQuotaDaily, forKey: .videoQuotaDaily)
        try container.encodeIfPresent(p2pEnabled, forKey: .p2pEnabled)
        try container.encodeIfPresent(videosCount, forKey: .videosCount)
        try container.encodeIfPresent(abusesCount, forKey: .abusesCount)
        try container.encodeIfPresent(abusesAcceptedCount, forKey: .abusesAcceptedCount)
        try container.encodeIfPresent(abusesCreatedCount, forKey: .abusesCreatedCount)
        try container.encodeIfPresent(videoCommentsCount, forKey: .videoCommentsCount)
    }
}
