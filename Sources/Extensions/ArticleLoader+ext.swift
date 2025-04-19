//
//  ArticleLoader+ext.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 16/04/2025.
//

import Foundation
import Ignite

// https://www.castlemooch.net/blog/dynamic-blog-page-index/
extension ArticleLoader {
    // an array of all blog articles
    public var blogArticles: [Article] {
        typed("blog")
    }

    // returns number of blog articles
    public var blogArticlesCount: Int {
        blogArticles.count
    }

    // returns the number of blog pages there will be
    // e.g. if 10 blog articles in total, and Constants.blogArticlesPerPage is 5
    // this returns 2, i.e. 2 pages
    public var blogPageCount: Int {
        let blogCount = blogArticlesCount
        var pages = blogCount / Constants.blogArticlesPerPage
        pages += blogCount.isMultiple(of: Constants.blogArticlesPerPage) ? 0 : 1
        return pages
    }

    // returns an array of Article
    // containing those blog Articles that will appear on the given pageNumber
    // e.g. if there are 10 blog articles and want 5 articles per page
    // calling with pageNumber = 2, it will return an array
    // containing the 6th, 7h, 8th, 9th, and 10th blog articles from the site
    public func blogArticlesFor(pageNumber: Int) -> [Article] {
        var articles: [Article] = []

        // if page is not at least 1, then we won't have any articles so return the empty array
        guard pageNumber > 0 else { return articles }

        // must work out which blog articles to add to the returned array
        // do this by working out a page number for each article
        // and if it equals pageNumber, add it to the returned array
        var articleCount = 1
        var currentPageNumber = 1

        for article in blogArticles {
            // if current page number is the page number passed in
            // add article to the array of articles to return
            if currentPageNumber == pageNumber {
                articles.append(article)
            }

            // if have reached the number of articles for a page
            // must increment the page number and reset the article count back to 0
            // otherwise, increment article count again
            if articleCount == Constants.blogArticlesPerPage {
                currentPageNumber += 1
                articleCount = 1
            } else {
                articleCount += 1
            }
        }

        return articles
    }
}
