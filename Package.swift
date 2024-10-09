// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MySwiftPackage",
    platforms: [
        .macOS(.v12),
        .iOS(.v15)
    ],
    products: [
        // Define the executables and libraries produced by this package, and make them visible to other packages.
        .library(
            name: "MySwiftPackage",
            targets: ["MyLibrary"]),
        .executable(
            name: "MyExecutable",
            targets: ["MyExecutableTarget"])
    ],
    dependencies: [
        // Define external dependencies with their repository URL and version.
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.5.0")
    ],
    targets: [
        // Define targets, which are basic building blocks of a package. A target can define a module or a test suite.
        .target(
            name: "MyLibrary",
            dependencies: []),
        .target(
            name: "MyExecutableTarget",
            dependencies: [
                "MyLibrary",
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]),
        .testTarget(
            name: "MyLibraryTests",
            dependencies: ["MyLibrary"])
    ]
)
