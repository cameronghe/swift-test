// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BrokenPackage",
    dependencies: [
        // Dependency 1: Alamofire version 5.x
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0"),
        
        // Dependency 2: Conflicting version of Alamofire (4.x)
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.9.1")
    ],
    targets: [
        .target(
            name: "BrokenPackage",
            dependencies: ["Alamofire"])
    ]
)
