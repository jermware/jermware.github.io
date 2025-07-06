//
//  MainLayout.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 10/01/2025.
//

import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
        Body {
            Header()

            content
                .style(.width, "90%")
                .class("mx-auto") // center alignment

            Footer()
        }
    }
}
