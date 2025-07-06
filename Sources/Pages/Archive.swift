//
//  Archive.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 06/11/2024.
//

import Foundation
import Ignite

struct Archive: StaticPage {
    @Environment(\.articles) var articles
    var title = "Archive"

    var body: some HTML {
        Text(title)
            .font(.title1)
            .fontWeight(.black)
            .margin(.top, .medium)

        Text("Tags")
            .font(.title4)
            .margin(.top, .large)

        Grid {
            let tags: [String] = Set(articles.all.flatMap { $0.tags ?? [] }).sorted()

            ForEach(tags) { tag in
                Group {
                    LinkGroup(target: "/tags/\(fixTag(tag))") {
                        Badge(tag)
                            .role(.primary)
                    }
                    .transition(.scale(from: 1.0, to: 1.015), on: .hover)
                }
            }
        }
        .columns(4)

        Text("Articles")
            .font(.title4)
            .margin(.top, .large)

        Table {
            for article in articles.all {
                Row {
                    Column {
                        "\(article.date.asShortDisplay)"
                    }
                    .verticalAlignment(.middle)

                    Column {
                        Link("\(article.title)", target: article.path)

                        if let subtitle = article.subtitle {
                            Text(subtitle)
                                .margin(.bottom, .none)
                        }
                    }
                    .verticalAlignment(.middle)
                }
            }
        }
        .tableStyle(.stripedRows)
    }

    private func fixTag(_ tag: String) -> String {
        var fixedTag = tag.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        fixedTag = fixedTag.replacing(#/ {1,}/#, with: "-") // replace space(s) with a single dash
        return fixedTag
    }
}
