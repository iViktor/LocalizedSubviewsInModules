// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "TheChildView",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(
            name: "TheChildView",
            targets: ["TheChildView"]
        ),
    ],
    dependencies: [
        .package(name: "Strings", path: "Strings")
    ],
    targets: [
        .target(
            name: "TheChildView",
            dependencies: [
                .product(name: "Strings", package: "Strings"),
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "TheChildViewTests",
            dependencies: ["TheChildView"]
        ),
    ]
)
