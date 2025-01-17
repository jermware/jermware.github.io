//
//  Tags.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 04/11/2024.
//

import Foundation
import Ignite

struct Tags: TagLayout {
    @Environment(\.content) var content

    var body: some HTML {
        Text(tag ?? "All tags")
            .font(.title1)
            .fontWeight(.black)
            .margin(.top, .medium)

        Table {
            for content in content {
                Row {
                    Column {
                        "\(content.date.asShortDisplay)"
                    }
                    .verticalAlignment(.middle)
                    .style("width: 200px")
                    Column {
                        Link("\(content.title)", target: content.path)

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
}
