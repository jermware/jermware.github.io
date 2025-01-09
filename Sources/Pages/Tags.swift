//
//  Tags.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 04/11/2024.
//

import Foundation
import Ignite

struct Tags: TagPage {
    func body(tag: String?, context: PublishingContext) async -> [any BlockElement] {
        Group {
            Section {
                if let tag {
                    Text(tag)
                        .font(.title1)
                        .fontWeight(.black)
                } else {
                    Text("All tags")
                        .font(.title1)
                        .fontWeight(.black)
                }
            }
            .margin(.top, .large)

            Table {
                for content in context.content(tagged: tag).sorted(by: \.date, order: .reverse) {
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
            .margin(.top, .large)

        }
        .frame(width: "90%")
    }
}
