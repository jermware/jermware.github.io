//
//  MainLayout.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 10/01/2025.
//

import Foundation
import Ignite

struct MainLayout: Layout {
    @Environment(\.siteConfiguration) private var siteConfiguration

    var body: some HTML {
        HTMLDocument {
            HTMLHead(for: page, with: siteConfiguration)

            HTMLBody {
                Header()

                Section(page.body)

                Footer()
            }
        }
    }
}
