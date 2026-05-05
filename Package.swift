// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "swiftgit",
    products: [.executable(name: "swiftgit", targets: ["App"])],
    targets: [.executableTarget(name: "App", path: "src")]
)
