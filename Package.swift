// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "feather-oauth-api",
    platforms: [
        .macOS(.v14),
        .iOS(.v17),
        .tvOS(.v17),
        .watchOS(.v10),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "OauthAPIKit", targets: ["OauthAPIKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/feather-framework/feather-openapi-kit", .upToNextMinor(from: "0.9.8")),
        .package(url: "https://github.com/feather-framework/feather-api-kit", .upToNextMinor(from: "0.1.2")),
        .package(url: "https://github.com/feather-modules/feather-system-api", .upToNextMinor(from: "0.2.0")),
        .package(url: "https://github.com/jpsim/Yams", from: "5.0.0"),
    ],
    targets: [
        
        .target(
            name: "OauthAPIKit",
            dependencies: [
                .product(name: "FeatherOpenAPIKit", package: "feather-openapi-kit"),
                .product(name: "FeatherAPIKit", package: "feather-api-kit"),
                .product(name: "SystemAPIKit", package: "feather-system-api"),
            ],
            plugins: [
                .plugin(name: "FeatherOpenAPIGenerator", package: "feather-openapi-kit")
            ]
        ),
        
        .executableTarget(
            name: "TestAPIGenerator",
            dependencies: [
                .product(name: "Yams", package: "Yams"),
                .product(name: "FeatherOpenAPIKit", package: "feather-openapi-kit"),
                .target(name: "OauthAPIKit"),
            ]
        ),
        
        .testTarget(
            name: "UserAPIKitTests",
            dependencies: [
                .target(name: "OauthAPIKit"),
            ]
        ),
    ]
)
