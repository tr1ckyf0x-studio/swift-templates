// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "{{ module_name }}",
    products: [
        .library(
            name: "{{ module_name }}",
            targets: ["{{ module_name }}"]
        )
    ],
    dependencies: [
    {% if include_tests %}
        .package(url: "https://github.com/Quick/Quick", from: "5.0.1"),
        .package(url: "https://github.com/Quick/Nimble", from: "10.0.0")
    {% endif %}
    ],
    targets: [
        .target(
            name: "{{ module_name }}",
            dependencies: [
            ]
        ),
        {% if include_tests %}
        .testTarget(
            name: "{{ module_name }}Tests",
            dependencies: [
                "{{ module_name }}",
                "Quick",
                "Nimble"
            ]
        )
        {% endif %}
    ]
)
