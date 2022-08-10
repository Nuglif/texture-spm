// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let package = Package(
    name: "Texture",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "AsyncDisplayKit",
            targets: ["AsyncDisplayKit"]),
        .library(
            name: "PINRemoteImage",
            targets: ["PINRemoteImage"]),
        .library(
            name: "PINCache",
            targets: ["PINCache"]),
        .library(
            name: "PINOperation",
            targets: ["PINOperation"]),
        .library(
            name: "libwebp",
            targets: ["libwebp"]),
    ],
    targets: [
        .binaryTarget(name: "AsyncDisplayKit", path: "binaries/AsyncDisplayKit.xcframework"),
        .binaryTarget(name: "PINRemoteImage", path: "binaries/PINRemoteImage.xcframework"),
        .binaryTarget(name: "PINCache", path: "binaries/PINCache.xcframework"),
        .binaryTarget(name: "PINOperation", path: "binaries/PINOperation.xcframework"),
        .binaryTarget(name: "libwebp", path: "binaries/libwebp.xcframework")
    ]
)
