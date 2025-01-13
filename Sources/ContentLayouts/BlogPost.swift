//
//  BlogPost.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 04/11/2024.
//

import Foundation
import Ignite

struct BlogPost: ContentLayout {
    var body: some HTML {
        Text(content.title)
            .font(.title1)
            .fontWeight(.black)
            .margin(.top, .large)
            .margin(.bottom, .xLarge)

        Text(content.date.asLongDisplay)
            .font(.title6)
            .fontWeight(.regular)
            .foregroundStyle(.lightEmphasis)
            .margin(.top, .large)

        if content.hasTags {
            Text("Tagged with: \(content.tags.joined(separator: ", "))")
                .font(.title6)
                .fontWeight(.light)
                .foregroundStyle(.lightEmphasis)
        }

        Text("\(content.estimatedWordCount) words; \(content.estimatedReadingMinutes) minutes to read.")
            .font(.title6)
            .fontWeight(.light)
            .foregroundStyle(.lightEmphasis)
            .margin(.bottom, .xLarge)

        Text(content.body)
    }
}
