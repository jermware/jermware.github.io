//
//  ProjectPost.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 04/11/2024.
//

import Foundation
import Ignite

struct ProjectPost: ContentPage {
    func body(content: Content, context: PublishingContext) async -> [any BlockElement] {
        Group {
            Text(content.title)
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)
                .margin(.bottom, .extraLarge)

            Include("slider.html")
            Include("\(content.title)Slider.html")

            content.body

            Text(content.date.asLongDisplay)
                .font(.title6)
                .fontWeight(.regular)
                .foregroundStyle(.secondary)
                .margin(.top, .extraLarge)
        }
        .frame(width: "90%")
    }
}
