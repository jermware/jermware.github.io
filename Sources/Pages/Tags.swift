//
//  Tags.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 04/11/2024.
//

import Foundation
import Ignite

struct Tags: TagPage {

    var body: some HTML {
        Text(tag.name)
            .font(.title1)
            .fontWeight(.black)
            .margin(.top, .medium)

        Table {
            for article in tag.articles {
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
        .margin(.top, .large)
    }
}
