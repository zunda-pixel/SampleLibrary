// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "SampleLibrary",
  products: [
    .library(name: "SampleLibrary", targets: ["SampleLibrary"]),
  ],
  dependencies: [
  ],
  targets: [
    .executableTarget(name: "SampleExec"),
    .target(name: "SampleLibrary", plugins: ["SamplePlugin"]),
    .plugin(
      name: "SamplePlugin",
      capability: .buildTool(),
      dependencies: [
        .target(name: "SampleExec")
      ]
    ),
  ]
)
