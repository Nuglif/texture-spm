// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

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
            targets: ["libwebp"])
    ],
    targets: [
        .binaryTarget(name: "AsyncDisplayKit", path: "Carthage/Build/AsyncDisplayKit.xcframework"),
        .binaryTarget(name: "PINRemoteImage", path: "Carthage/Build/PINRemoteImage.xcframework"),
        .binaryTarget(name: "PINCache", path: "Carthage/Build/PINCache.xcframework"),
        .binaryTarget(name: "PINOperation", path: "Carthage/Build/PINOperation.xcframework"),
        .binaryTarget(name: "libwebp", path: "Carthage/Build/libwebp.xcframework")
    ]
)

