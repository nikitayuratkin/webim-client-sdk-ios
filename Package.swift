// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "WebimClientLibrary",
    platforms: [
       .iOS(.v9)
    ],
    products: [
        .library(name: "WebimClientLibrary", targets: ["WebimClientLibrary"])
    ],
    dependencies: [
        .package(url: "git@github.com:nikitayuratkin/SQLite.swift.git", .upToNextMinor(from: "0.12.0"))
    ],
    targets: [
        .target(name: "WebimClientLibrary",
                dependencies: ["SQLite.swift"]
        )
    ]
)
