// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "flutter_google_places_sdk_ios",
    platforms: [
        .iOS("16.0"),
    ],
    products: [
        .library(name: "flutter-google-places-sdk-ios", targets: ["flutter_google_places_sdk_ios"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googlemaps/ios-places-sdk.git", "10.15.0"..<"11.0.0"),
    ],
    targets: [
        .target(
            name: "flutter_google_places_sdk_ios",
            dependencies: [
                .product(name: "GooglePlaces", package: "ios-places-sdk"),
            ],
            cSettings: [
                .headerSearchPath("include/flutter_google_places_sdk_ios"),
            ]
        ),
    ]
)
