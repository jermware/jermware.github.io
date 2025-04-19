import Foundation
import Ignite

struct Home: StaticPage {
    @Environment(\.articles) var articles
    var title = "Home"

    var body: some HTML {
//        List {
//            ForEach(articles.all) { article in
//                Link(article)
//            }
//        }
//        .margin(.top)

        // only display the first page of blog entries on the home page
        BlogPager(pageNumber: 1, pageCount: articles.blogPageCount)
        BlogEntries(pageNumber: 1)
        BlogPager(pageNumber: 1, pageCount: articles.blogPageCount)
    }
}

