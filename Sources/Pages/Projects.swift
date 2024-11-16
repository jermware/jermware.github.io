//
//  Projects.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 06/11/2024.
//

import Foundation
import Ignite

struct Projects: StaticPage {
    var title = "Projects"
    var projects: [Project]

    struct Project {
        var name: String
        var description: String
    }

    init() {
        projects = [
            .init(name: "gjPace", description: "An iOS app for calculating pace, time, speed, and distance combinations."),
            .init(name: "gjPwd", description: "An iOS app for generating secure, easy to use, passwords."),
            .init(name: "gjBeers", description: "An iOS app for cataloguing real ales."),
            .init(name: "gjLists", description: "An iOS app for creating lists."),
            .init(name: "gjNotes", description: "An iOS app for creating notes."),
            .init(name: "gjICE", description: "An iOS Lock Screen widget for emergency contact details."),
            .init(name: "gjAero", description: "An iOS app for creating perfect <a href=\"https://en.wikipedia.org/wiki/AeroPress\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"link-primary link-underline-opacity-0 link-underline-opacity-100-hover\">AeroPress</a> brews."),
            .init(name: "gjPubs", description: "An iOS app for collecting and rating your pubs."),
            .init(name: "gjJotter", description: "An iOS app for saving your jottings."),
        ]
    }

    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            Text(title)
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            Text("Here are all my iOS software development projects.")
                .margin(.top, .large)

            Section {
                Table {
                    for project in projects {
                        Row {
                            Column {
                                "&nbsp;"
                                "<img width=\"64\" height=\"64\" src=\"/images/\(project.name)/\(project.name)-icon.png\">"
                            }
                            Column {
                                Link("\(project.name)", target: "/projects/\(project.name)")
                                    .linkStyle(.hover)
                            }.verticalAlignment(.middle)
                            Column {
                                "\(project.description)"
                            }.verticalAlignment(.middle)
                        }
                    }
                }
                .tableBorder(true)
            }

            let link = Link("App Store", target: URL("https://apps.apple.com/gb/developer/gavin-jerman/id1528217377"))
                .linkStyle(.hover)
                .target(.blank)
                .relationship(.noOpener, .noReferrer)

            Text {
                Text("Here are links to all my apps on the \(link.render(context: context))")
            }
        }
        .frame(width: "90%")
    }
}
