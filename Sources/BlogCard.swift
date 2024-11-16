//
//  BlogCard.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 07/11/2024.
//

import Foundation
import Ignite

public struct BlogCard: Component {
    var content: Content

    public func body(context: PublishingContext) -> [any PageElement] {
        Card() {
            Text(content.description)
                .margin(.bottom, .none)

            if let image = content.image {
                Image(decorative: image)
                    .style("width: 200px")
                    .margin(.top, 10)
            }
        } header: {
            Text {
                Link(content)
                    .linkStyle(.hover)
            }
            .font(.title5)
        } footer: {
            let tagLinks = content.tagLinks(in: context)

            if tagLinks.isEmpty == false {
                Group {
                    tagLinks
//                    for tagLink in tagLinks {
//                        Badge(tagLink)
//                            .badgeStyle(.subtleBordered)
//                            .role(.primary)
//                            .margin(.trailing, 5)
//                            .margin(.bottom, .small)
//                    }
                }
                .style("margin-top: -3px")
            }
        }
    }
}
