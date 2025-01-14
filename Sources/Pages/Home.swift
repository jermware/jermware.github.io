import Foundation
import Ignite

struct Home: StaticLayout {
    @Environment(\.content) var content
    var title = "Home"

    var body: some HTML {
//        Section {
//            List {
//                ForEach(content.all.sorted(by: \.date, order: .reverse)) { content in
//                    Link(content)
//                }
//            }
//        }
//        .margin(.top, .large)

        Grid  {
            ForEach(content.typed("blog").sorted(by: \.date, order: .reverse)) { content in
                BlogCard(content: content)
                    .margin(.top, .medium)
            }
        }
        .columns(3)
    }
}
