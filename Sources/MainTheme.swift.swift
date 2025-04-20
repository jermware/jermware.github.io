//
//  MainTheme.swift.swift
//  JermwareWebsite
//
//  Created by Gavin Jerman on 20/04/2025.
//

import Foundation
import Ignite

// https://github.com/JPToroDev/Lighting-Ignite-on-Fire/blob/main/Sources/Site.swift
protocol BaseTheme: Theme {}

extension BaseTheme {
    var monospaceFont: Font { .sourceCodePro }
}

struct DarkTheme: BaseTheme {
    var colorScheme: ColorScheme = .dark
    var background: Color = .init(hex: "#191919")
}

struct LightTheme: BaseTheme {
    var colorScheme: ColorScheme = .light
    var link: Color = .dimGray
    var hoveredLink: Color = .gray
    var accent: Color = .dimGray
}

private extension Font {
    static let sourceCodePro: Font = .init(
        name: "SourceCodePro",
        sources:
        FontSource(weight: .regular, url: URL(static: "/fonts/SourceCodePro-Regular.ttf")),
        FontSource(weight: .regular, variant: .italic, url: URL(static: "/fonts/SourceCodePro-Regular.ttf")))
}
