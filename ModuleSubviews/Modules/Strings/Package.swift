// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Strings",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(
            name: "Strings",
            targets: ["Strings"]
        ),
    ],
    targets: [
        .target(
            name: "Strings",
            path: "Sources"
        ),
        .testTarget(
            name: "StringsTests",
            dependencies: ["Strings"]
        ),
    ]
)
