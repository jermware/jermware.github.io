//
//  Footer.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 04/11/2024.
//

import Foundation
import Ignite

struct Footer: HTML {
    private let icons = [
        Image(systemName: "github"),
        Image(systemName: "mastodon"),
        Image(systemName: "rss-fill")
    ]

    private let urlStrings = [
        "https://github.com/jermware/jermware.github.io",
        "https://mstdn.social/@gavinjerman",
        "/feed.rss"
    ]

    private let logo = Link("Created in Swift with Ignite", target: URL(static: "https://github.com/twostraws/Ignite"))
        .target(.blank)
        .relationship(.noOpener, .noReferrer)

    var body: some HTML {
        NavigationBar(logo: logo) {
            for (icon, urlString) in zip(icons, urlStrings) {
                Link(icon, target: urlString)
                    .target(.blank)
                    .relationship(.noOpener, .noReferrer)
                    .role(.light)
            }
        }
        .navigationItemAlignment(.trailing)
        .background(Color(red: 28/255, green: 29/255, blue: 34/255))
        .margin(.top, .medium)
        .margin(.bottom, .xSmall)
    }
}
