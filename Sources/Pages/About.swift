//
//  About.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 04/11/2024.
//

import Foundation
import Ignite

struct About: StaticLayout {
    var title = "About"

    private let githubLink = Link("GitHub Pages", target: URL(static: "https://pages.github.com"))
        .linkStyle(.hover)
        .target(.blank)
        .relationship(.noOpener, .noReferrer)

    private let igniteLink = Link("Ignite", target: URL(static: "https://github.com/twostraws/Ignite"))
        .linkStyle(.hover)
        .target(.blank)
        .relationship(.noOpener, .noReferrer)

    private let swiftLink = Link("Swift", target: URL(static: "https://developer.apple.com/swift"))
        .linkStyle(.hover)
        .target(.blank)
        .relationship(.noOpener, .noReferrer)

    var body: some HTML {
        Text(title)
            .font(.title1)
            .fontWeight(.black)
            .margin(.top, .medium)

        Text {
            "I'm Gavin Jerman, a retired C++ and .NET software developer living in the Cotswolds, England.<br><br>"
            "I spend my spare time running, enjoying real ale, and writing code.<br><br>"
            "I created this website primarily to allow me to release apps on Apple's App Store and Mac App Store.<br><br>"
            "Occasionally I may write about running, real ale, and software development.<br><br>"
            "This site is hosted using "
            githubLink
            " and built using "
            igniteLink
            " and "
            swiftLink
            "."
        }
        .margin(.top, .large)

        Text("November 4, 2024")
            .font(.title6)
            .fontWeight(.light)
            .foregroundStyle(.lightEmphasis)
            .margin(.top, .xLarge)
    }
}
