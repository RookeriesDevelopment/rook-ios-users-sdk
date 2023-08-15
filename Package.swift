// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RookUserSDK",
    
    platforms: [
      .iOS(.v13)
    ],
    
    products: [
        .library(
            name: "RookUserSDK",
            targets: ["RookUserSDK"]),
    ],
    dependencies: [
    ],
    targets: [
      
        .target(
            name: "RookUserSDK",
            dependencies: ["RookUsersSDK"],
            cxxSettings: [
              .headerSearchPath("include")
            ]),
        
          .binaryTarget(name: "RookUsersSDK", path: "RookUsersSDK/RookUsersSDK.xcframework"),
    ]
)
