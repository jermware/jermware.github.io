//
//  ProjectPost.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 04/11/2024.
//

import Foundation
import Ignite

struct ProjectPost: ContentLayout {
    var body: some HTML {
        Text(content.title)
            .font(.title1)
            .fontWeight(.black)
            .margin(.top, .large)
            .margin(.bottom, .xLarge)

        Include("slider.html")
        Include("\(content.title)Slider.html")

        Text(content.body)

        Text(content.date.asLongDisplay)
            .font(.title6)
            .fontWeight(.light)
            .foregroundStyle(.lightEmphasis)
            .margin(.top, .xLarge)
    }
}
