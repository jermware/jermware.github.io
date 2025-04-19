//
//  ProjectPost.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 04/11/2024.
//

import Foundation
import Ignite

struct ProjectPost: ArticlePage {
    var body: some HTML {
        Text(article.title)
            .font(.title1)
            .fontWeight(.black)
            .margin(.top, .large)
            .margin(.bottom, .xLarge)

        Include("slider.html")
        Include("\(article.title)Slider.html")

        Text(article.text)

        Text(article.date.asLongDisplay)
            .font(.title6)
            .fontWeight(.light)
            .foregroundStyle(.lightEmphasis)
            .margin(.top, .xLarge)
    }
}
