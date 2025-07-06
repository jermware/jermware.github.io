//
//  Footer.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 04/11/2024.
//

import Foundation
import Ignite

struct Footer: HTML {
    private let igniteLink = Link("Ignite", target: URL(static: "https://github.com/twostraws/Ignite"))
        .target(.blank)
        .relationship(.noOpener, .noReferrer)

    var body: some HTML {
        HStack {
            Text("© 2025 jermware")
            Spacer()
            SocialFooter()
        }
        .margin(.top, .xLarge)

        HStack {
            Spacer()
            Text("Created in Swift with \(igniteLink)")
        }
        .margin(.bottom, .medium)
    }
}

struct SocialFooter: HTML {
    private let icons = [
        Image(systemName: "github", description: "github"),
        Image(systemName: "mastodon", description: "mastodon"),
        Image(systemName: "rss-fill", description: "rss")
    ]

    private let urlStrings = [
        "https://github.com/jermware/jermware.github.io",
        "https://mstdn.social/@gavinjerman",
        "/feed.rss"
    ]

    var body: some HTML {
        Text {
            for item in Social.allCases {
                item
            }
        }
        .font(.title5)
    }
}
