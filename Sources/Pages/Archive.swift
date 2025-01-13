//
//  Archive.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 06/11/2024.
//

import Foundation
import Ignite

struct Archive: StaticLayout {
    @Environment(\.content) var content
    var title = "Archive"

    var body: some HTML {
        Text(title)
            .font(.title1)
            .fontWeight(.black)
            .margin(.top, .large)

        Text("Tags")
            .font(.title4)
            .margin(.top, .large)

        Grid {
            let tags: [String] = Set(content.all.flatMap(\.tags)).sorted()

            ForEach(tags) { tag in
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
            for content in content.all.sorted(by: \.date, order: .reverse) {
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

    private func fixTag(_ tag: String) -> String {
        var fixedTag = tag.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        fixedTag = fixedTag.replacing(#/ {1,}/#, with: "-") // replace space(s) with a single dash
        return fixedTag
    }
}
