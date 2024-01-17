//
// RunnerJobType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum RunnerJobType: String, Codable, CaseIterable {
    case vodWebVideoTranscoding = "vod-web-video-transcoding"
    case vodHlsTranscoding = "vod-hls-transcoding"
    case vodAudioMergeTranscoding = "vod-audio-merge-transcoding"
    case liveRtmpHlsTranscoding = "live-rtmp-hls-transcoding"
}
