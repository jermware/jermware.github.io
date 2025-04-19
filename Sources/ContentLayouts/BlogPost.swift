//
//  BlogPost.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 04/11/2024.
//

import Foundation
import Ignite

struct BlogPost: ArticlePage {
    var body: some HTML {
        Text(article.title)
            .font(.title1)
            .fontWeight(.black)
            .margin(.top, .large)
            .margin(.bottom, .xLarge)

        Text(article.date.asLongDisplay)
            .font(.title6)
            .fontWeight(.regular)
            .foregroundStyle(.lightEmphasis)
            .margin(.top, .large)

        if let tags = article.tags {
            Text("Tagged with: \(tags.joined(separator: ", "))")
                .font(.title6)
                .fontWeight(.light)
                .foregroundStyle(.lightEmphasis)
        }

        Text("\(article.estimatedWordCount) words; \(article.estimatedReadingMinutes) minutes to read.")
            .font(.title6)
            .fontWeight(.light)
            .foregroundStyle(.lightEmphasis)
            .margin(.bottom, .xLarge)

        Text(article.text)
    }
}
