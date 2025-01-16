//
//  BlogCard.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 07/11/2024.
//

import Foundation
import Ignite

struct BlogCard: HTML {
    var content:Content

    init(content: Content) {
        self.content = content
    }

    var body: some HTML {
        Card() {
            Text(content.description)
                .margin(.bottom, .none)

            if let image = content.image {
                Image(decorative: image)
//                    .style("width: 200px;")
                    .style("width: 60%;")
                    .margin(.top, 10)
            }
        } header: {
            Text {
                Link(content)
            }
            .font(.title5)
        } footer: {
            let tagLinks = content.tagLinks()

            if tagLinks.isEmpty == false {
                Group {
                    tagLinks
                }
                .style("margin-top: -3px")
            }
        }
    }
}
