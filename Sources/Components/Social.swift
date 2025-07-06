//
//  Social.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 06/07/2025.
//

import Foundation
import Ignite

enum Social: String, CaseIterable, Sendable, InlineElement {
    case github, mastodon, rss

    var body: some InlineElement {
        Link(icon, target: urlString)
            .role(.secondary)
            .target(.newWindow)
            .relationship(.noOpener, .noReferrer)
            .margin(.trailing, self == .rss ? 0 : 20)
    }

    var icon: Image {
        Image(systemName: "\(iconName)", description: iconDescription)
    }

    var iconName: String {
        switch self {
        case .github: "github"
        case .mastodon: "mastodon"
        case .rss: "rss-fill"
        }
    }

    var iconDescription: String {
        switch self {
        case .github: "GitHub icon"
        case .mastodon: "Mastodon icon"
        case .rss: "RSS icon"
        }
    }

    var urlString: String {
        switch self {
        case .github: "https://github.com/jermware"
        case .mastodon: "https://mstdn.social/@gavinjerman"
        case .rss: "/feed.rss"
        }
    }
}
