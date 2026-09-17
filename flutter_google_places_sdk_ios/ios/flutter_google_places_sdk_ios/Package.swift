// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "flutter_google_places_sdk_ios",
    platforms: [
        .iOS("14.0"),
    ],
    products: [
        .library(name: "flutter-google-places-sdk-ios", targets: ["flutter_google_places_sdk_ios"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googlemaps/ios-places-sdk.git", "8.5.0"..<"9.0.0"),
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
