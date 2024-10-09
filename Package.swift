// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BrokenPackage",
    dependencies: [
        // Dependency 1: Alamofire version 5.x
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0"),
        
        // Dependency 2: Conflicting version of Alamofire (4.x)
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.9.0"),
        
        // Dependency 3: Non-existent version of Alamofire (10.x)
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "10.0.0"),
        
        // Dependency 4: Invalid repository URL
        .package(url: "https://github.com/some/nonexistent-repo.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "BrokenPackage",
            dependencies: ["Alamofire"])
    ]
)
