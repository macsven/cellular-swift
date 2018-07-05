// swift-tools-version:4.1
import PackageDescription

let package = Package(
    name: "CELLULAR",
    products: [
        .library(name: "CELLULAR", targets: ["CELLULAR"])
    ],
    targets: [
        .target(name: "CELLULAR", path: "Sources"),
        .testTarget(name: "UnitTests", dependencies: ["CELLULAR"])
    ]
)
