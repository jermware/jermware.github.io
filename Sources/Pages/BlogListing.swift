//
//  BlogListing.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 17/04/2025.
//

import Foundation
import Ignite

struct BlogListingPage: StaticPage {
    @Environment(\.articles) var articles

    var title: String
    var path: String
    var pageNumber: Int

    init(pageNumber: Int) {
        self.pageNumber = pageNumber
        self.title = "Blog page \(pageNumber)"
        self.path = "blog/\(pageNumber)"
    }

    var body: some HTML {
        BlogPager(pageNumber: pageNumber, pageCount: articles.blogPageCount)
        BlogEntries(pageNumber: pageNumber)
        BlogPager(pageNumber: pageNumber, pageCount: articles.blogPageCount)
    }
}
