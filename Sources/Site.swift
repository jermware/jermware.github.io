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
    var url: URL = URL(static: "https://jermware.net")
    var author = "Gavin Jerman"
    var favicon = URL(string: "/favicon.png")

//    var builtInIconsEnabled = BootstrapOptions.localBootstrap
//    var feedConfiguration: FeedConfiguration = FeedConfiguration(mode: .descriptionOnly, contentCount: 20)

    var homePage = Home()
    var tagLayout = Tags()
    var layout = MainLayout()

    var staticLayouts: [any StaticLayout] {
        Projects()
        About()
        Archive()
    }

    var contentLayouts: [any ContentLayout] {
        BlogPost()
        ProjectPost()
    }
}
