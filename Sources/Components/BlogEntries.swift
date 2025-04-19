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
                BlogCard(article: article)
            }
        }
        .columns(Constants.blogArticlesColumns)
    }
}
