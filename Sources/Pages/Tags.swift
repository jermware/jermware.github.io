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

            let articles = context.content(tagged: tag)
            
            List {
                for article in articles {
                    Link(article)
                        .linkStyle(.hover)
                }
            }
            .margin(.top, .large)
        }
        .frame(width: "90%")
    }
}
