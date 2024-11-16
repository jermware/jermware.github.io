//
//  Archive.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 06/11/2024.
//

import Foundation
import Ignite

struct Archive: StaticPage {
    var title = "Archive"

    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            Text(title)
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            Text("Tags")
                .font(.title4)
                .margin(.top, .large)

            Section {
                let tags: [String] = Set(context.allContent.flatMap(\.tags)).sorted()

                for tag in tags {
                    Group {
                        Link(target: "/tags/\(fixTag(tag))") {
                            Badge(tag)
                                .role(.primary)
                                .margin(.bottom, .small)
                        }
                    }
                }
            }
            .columns(4)

            Text("Articles")
                .font(.title4)
                .margin(.top, .large)

            Table {
                for content in context.content(ofType: "blog").sorted(by: \.date, order: .reverse) {
                    Row {
                        Column {
                            "\(content.date.asShortDisplay)"
                        }
                        .verticalAlignment(.middle)
                        .style("width: 200px")
                        Column {
                            Link("\(content.title)", target: content.path)
                                .linkStyle(.hover)

                            if let subtitle = content.subtitle {
                                Text(subtitle)
                                    .margin(.bottom, 0)
                            }
                        }
                        .verticalAlignment(.middle)
                    }
                }
            }
            .tableStyle(.stripedRows)
        }
        .frame(width: "90%")
    }

    private func fixTag(_ tag: String) -> String {
        var fixedTag = tag.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        fixedTag = fixedTag.replacing(#/ {1,}/#, with: "-") // replace space(s) with a single dash
        return fixedTag
    }
}
