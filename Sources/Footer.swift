//
//  Footer.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 04/11/2024.
//

import Foundation
import Ignite

public struct Footer: Component {
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

    private let logo = Link("Created in Swift with Ignite", target: URL("https://github.com/twostraws/Ignite"))
        .linkStyle(.hover)
        .target(.blank)
        .relationship(.noOpener, .noReferrer)

    public func body(context: PublishingContext) -> [any PageElement] {
        NavigationBar(logo: logo) {
            for (icon, urlString) in zip(icons, urlStrings) {
                Link(icon, target: urlString)
                    .target(.blank)
                    .relationship(.noOpener, .noReferrer)
                    .margin(.trailing, 20)
            }
        }
        .background(Color(red: 28/255, green: 29/255, blue: 34/255))
        .navigationBarStyle(.dark)
        .navigationItemAlignment(.trailing)
        .margin(.top, .extraLarge)
        .margin(.bottom, .extraSmall)
    }
}
