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

    var body: some HTML {
        Card() {
            Text {article.title}
                .font(.title5)

            if let image = article.image {
                HStack {
                    Spacer()
                    Image(decorative: image)
                        .style(.width, "60%")
                        .margin(.top, .medium)
                    Spacer()
                }
            }

            Text(article.description)
                .margin(.top, .medium)

            if let tagLinks = article.tagLinks() {
                Section {
                    ForEach(tagLinks) { tagLink in
                        tagLink
                    }
                }
                .margin(.top, .medium)
            }
        }
        .padding(3)
        .background(.whiteSmoke)
    }
}
