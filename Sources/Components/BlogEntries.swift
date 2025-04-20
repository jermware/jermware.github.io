//
//  BlogEntries.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 17/04/2025.
//

import Foundation
import Ignite

struct BlogEntries: HTML {
    @Environment(\.articles) var articles
    let pageNumber: Int

    var body: some HTML {
        Grid(alignment: .topLeading) {
            ForEach(articles.blogArticlesFor(pageNumber: pageNumber)) { article in
                Link(target: article) {
                    BlogCard(article: article)
                }
                .transition(.scale(from: 1.0, to: 1.015), on: .hover)
            }
        }
        .columns(Constants.blogArticlesColumns)
    }
}
