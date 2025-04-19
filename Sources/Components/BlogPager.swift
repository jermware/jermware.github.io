//
//  BlogPager.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 17/04/2025.
//

import Foundation
import Ignite

struct BlogPager: HTML {
    let pageNumber: Int
    let pageCount: Int

    var body: some HTML {
        if pageNumber > 1 || pageCount > pageNumber {
            HStack {
                if pageNumber > 1 {
                    Link("← Newer posts", target: target(pageNumber: pageNumber))
                }
                Spacer()
                if pageCount > pageNumber {
                    Link("Older posts →", target: "../../blog/\(pageNumber + 1)")
                }
            }
            .margin(.top, .medium)
        }
    }

    private func target(pageNumber: Int) -> String {
        if pageNumber == 2 {
            return "/"
        } else {
            return "../../blog/\(pageNumber - 1)"
        }
    }
}
