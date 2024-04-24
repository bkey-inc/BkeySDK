// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
// Test 3

import PackageDescription

let package = Package(
    name: "bkey-ios-sdk",
    platforms: [
      .iOS(.v16),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "bkey-ios-sdk",
            targets: ["bkey-ios-sdk"]),
    ],
    targets: [
        .binaryTarget(
            name: "bkey-ios-sdk",
            path: "./bkey-ios-sdk.xcframework"
        ),
    ]
)
