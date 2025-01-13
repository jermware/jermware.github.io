import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = JermwareSite()

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
    var url: URL = URL("https://jermware.net")
    var author = "Gavin Jerman"

    var homePage = Home()
    var tagPage = Tags()
    var theme = MyTheme()
//    var pageWidth = 9 // default is 10 of 12 columns
    var favicon = URL(string: "/favicon.png")
//    var feedConfiguration: FeedConfiguration = FeedConfiguration(mode: .descriptionOnly, contentCount: 20)

    var pages: [any StaticPage] {
        Projects()
        About()
        Archive()
    }

    var layouts: [any ContentPage] {
        BlogPost()
        ProjectPost()
    }
}
