// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JermwareWebsite",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(url: "https://github.com/twostraws/Ignite.git", branch: "main")
//        .package(url: "https://github.com/twostraws/Ignite.git", exact: "0.5.2")
//        .package(url: "https://github.com/twostraws/Ignite.git", exact: "0.6.0") // 21 May 25
//        .package(path: "../Ignite")
    ],
    targets: [
        .executableTarget(
            name: "JermwareWebsite",
            dependencies: ["Ignite"]),
    ]
)
