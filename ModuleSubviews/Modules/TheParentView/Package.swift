// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TheParentView",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(
            name: "TheParentView",
            targets: ["TheParentView"]
        ),
    ],
    dependencies: [
        .package(name: "Strings", path: "Strings"),
        .package(name: "TheChildView", path: "TheChildView")
    ],
    targets: [
        .target(
            name: "TheParentView",
            dependencies: [
                .product(name: "Strings", package: "Strings"),
                .product(name: "TheChildView", package: "TheChildView")
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "TheParentViewTests",
            dependencies: ["TheParentView"]
        ),
    ]
)
