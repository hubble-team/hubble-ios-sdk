// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Hubble",
  platforms: [.iOS("15.1")],
  products: [
    .library(
      name: "Hubble",
      targets: ["Hubble"]
    ),
  ],
  targets: [
    .binaryTarget(
      name: "Hubble",
      path: "Hubble.xcframework"
    )
  ]
)
