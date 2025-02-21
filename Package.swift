// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "EvmKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "EvmKit",
            targets: ["EvmKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/attaswift/BigInt.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/Kitura/BlueSocket.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/groue/GRDB.swift.git", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: "4.1.0")),
        .package(url: "https://github.com/curdicu/HsCryptoKit.git", .branch("main")),
        .package(url: "https://github.com/curdicu/HdWalletKit.git", .branch("main")),
        .package(url: "https://github.com/curdicu/HsToolKit.git", .branch("main")),
        .package(url: "https://github.com/curdicu/HsExtensions.git", .branch("main")),
    ],
    targets: [
        .target(
            name: "EvmKit",
            dependencies: [
                "BigInt",
                .product(name: "Socket", package: "BlueSocket"),
                .product(name: "GRDB", package: "GRDB.swift"),
                "ObjectMapper",
                .product(name: "HsCryptoKit", package: "HsCryptoKit"),    
                .product(name: "HdWalletKit", package: "HdWalletKit"),
                .product(name: "HsToolKit", package: "HsToolKit"),
                .product(name: "HsExtensions", package: "HsExtensions"),
            ]
        ),
    ]
)
