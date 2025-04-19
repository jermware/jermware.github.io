//
//  BlogCard.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 07/11/2024.
//

import Foundation
import Ignite

struct BlogCard: HTML {
    var article: Article

    init(article: Article) {
        self.article = article
    }

    var body: some HTML {
        Card() {
            Text(article.description)

            if let image = article.image {
                Image(decorative: image)
                    .style(.width, "60%")
                    .margin(.top, .small)
            }
        } header: {
            Text {
                Link(article)
            }
            .font(.title5)
        } footer: {
            if let tagLinks = article.tagLinks() {
                ForEach(tagLinks) { tagLink in
                    tagLink
                }
            }
        }
    }
}
