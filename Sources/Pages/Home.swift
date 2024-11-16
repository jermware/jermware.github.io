import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        Group {
//            Section {
//                List {
//                    for content in context.allContent.sorted(by: \.date, order: .forward) {
//                        Link(content)
//                    }
//                }
//            }
//            .margin(.top, .large)

            Section {
                for content in context.content(ofType: "blog").sorted(by: \.date, order: .reverse) {
                    Group {
                        BlogCard(content: content)
                    }
                    .margin(.top, 20)
                }
            }
            .columns(3)
            .margin(.top, .large)
        }
        .frame(width: "90%")
    }
}
