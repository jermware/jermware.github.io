//
//  Header.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 04/11/2024.
//

import Foundation
import Ignite

struct Header: HTML {
    var body: some HTML {
        NavigationBar(logo: "jermware.net") {
            Link("Home", target: "/")
            Link("Projects", target: Projects())
            Link("Archive", target: Archive())
            Link("About", target: About())
        }
        .navigationBarStyle(.dark)
        .navigationItemAlignment(.trailing)
        .background(Color(red: 28/255, green: 29/255, blue: 34/255))
    }
}
