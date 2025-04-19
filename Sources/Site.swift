import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = JermwareSite()

        do {
            try await site.publish()
//            try await site.publish(buildDirectoryPath: "docs")
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct JermwareSite: Site {
    var name = "jermware"
    var url: URL = URL(static: "https://jermware.net")
    var author = "Gavin Jerman"
    var favicon = URL(string: "/favicon.png")

//    var builtInIconsEnabled = BootstrapOptions.localBootstrap
//    var feedConfiguration: FeedConfiguration = FeedConfiguration(mode: .descriptionOnly, contentCount: 20)

    var darkTheme: Theme? = nil // prevent dark theme

    var homePage = Home()
    var layout = MainLayout()
    var tagPage = Tags()

    var staticPages: [any StaticPage] = []

    var articlePages: [any ArticlePage] {
        BlogPost()
        ProjectPost()
    }

    mutating func prepare() async throws {
        @Environment(\.articles) var articles

        // add standard static pages
        staticPages.append(Projects())
        staticPages.append(About())
        staticPages.append(Archive())

        // add 'dynamic' static pages i.e. the paginated blog listing pages
        if articles.blogPageCount > 0 {
            for page in 1...articles.blogPageCount {
                let newPage = BlogListingPage(pageNumber: page)
                staticPages.append(newPage)
            }
        }
    }
}
