// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CodereCapacitorPlugin",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CodereCapacitorPlugin",
            targets: ["CodereCapacitorPluginPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "CodereCapacitorPluginPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/CodereCapacitorPluginPlugin"),
        .testTarget(
            name: "CodereCapacitorPluginPluginTests",
            dependencies: ["CodereCapacitorPluginPlugin"],
            path: "ios/Tests/CodereCapacitorPluginPluginTests")
    ]
)