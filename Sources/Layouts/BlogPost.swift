//
//  BlogPost.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 04/11/2024.
//

import Foundation
import Ignite

struct BlogPost: ContentPage {
    func body(content: Content, context: PublishingContext) async -> [any BlockElement] {
        Group {
            Text(content.title)
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            Group {
                Text(content.date.asLongDisplay)
                    .font(.title6)
                    .fontWeight(.regular)
                    .foregroundStyle(.secondary)

                if content.hasTags {
                    Text("Tagged with: \(content.tags.joined(separator: ", "))")
                        .font(.title6)
                        .fontWeight(.light)
                        .foregroundStyle(.secondary)
                }

                Text("\(content.estimatedWordCount) words; \(content.estimatedReadingMinutes) minutes to read.")
                    .font(.title6)
                    .fontWeight(.light)
                    .foregroundStyle(.secondary)
            }
            .margin(.top, .large)
            .margin(.bottom, .extraLarge)

            content.body
        }
        .frame(width: "90%")
    }
}
