// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Uptime",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "Uptime",
            targets: ["UptimePlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "UptimePlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/UptimePlugin"),
        .testTarget(
            name: "UptimePluginTests",
            dependencies: ["UptimePlugin"],
            path: "ios/Tests/UptimePluginTests")
    ]
)