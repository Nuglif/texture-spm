// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
import Foundation

enum Configuration: String {
    case debug
    case release

    static let `default`: Configuration = .release

    static var current: Configuration {
        if let value = ProcessInfo.processInfo.environment["SWIFTPM_CONFIGURATION"] {
            return Configuration(rawValue: value.lowercased()) ?? .default
        } else {
            return .default
        }
    }
}

let targets: [PackageDescription.Target]
let currentConfiguration = Configuration.current

print("Using SWIFTPM_CONFIGURATION: \(currentConfiguration)")

switch currentConfiguration {
case .release:
    targets = [
        .binaryTarget(name: "AsyncDisplayKit", path: "Carthage/Build/AsyncDisplayKit.xcframework"),
        .binaryTarget(name: "PINRemoteImage", path: "Carthage/Build/PINRemoteImage.xcframework"),
        .binaryTarget(name: "PINCache", path: "Carthage/Build/PINCache.xcframework"),
        .binaryTarget(name: "PINOperation", path: "Carthage/Build/PINOperation.xcframework"),
        .binaryTarget(name: "libwebp", path: "Carthage/Build/libwebp.xcframework")
    ]
case .debug:
    targets = [
        .binaryTarget(name: "AsyncDisplayKit", path: "Carthage/Build/AsyncDisplayKit.xcframework"),
        .binaryTarget(name: "PINRemoteImage", path: "Carthage/Build/PINRemoteImage.xcframework"),
        .binaryTarget(name: "PINCache", path: "Carthage/Build/PINCache.xcframework"),
        .binaryTarget(name: "PINOperation", path: "Carthage/Build/PINOperation.xcframework"),
        .binaryTarget(name: "libwebp", path: "Carthage/Build/libwebp.xcframework")
    ]
}

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
    targets: targets
)

