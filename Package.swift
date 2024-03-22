// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BkeySDK",
    platforms: [
      .iOS(.v16),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "bkey-ios-sdk",
            targets: ["bkey-ios-sdk"]),
    ],
    dependencies: [
        //.package(url: "https://github.com/GigaBitcoin/secp256k1.swift.git", exact: "0.15.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        /*.target(
            name: "BkeySDK"),
        .testTarget(
            name: "BkeySDKTests",
            dependencies: ["BkeySDK"]),*/
        .binaryTarget(
            name: "bkey-ios-sdk",
            path: "./bkey-ios-sdk.xcframework"
        )
    ]
)
