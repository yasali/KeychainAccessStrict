// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "KeychainAccessStrict",
    platforms: [
        .macOS(.v10_10), .iOS(.v8), .tvOS(.v9), .watchOS(.v2)
    ],
    products: [
        .library(name: "KeychainAccessStrict", targets: ["KeychainAccessStrict"])
    ],
    targets: [
        .target(
          name: "KeychainAccess",
          path: "Lib/KeychainAccess",
          linkerSettings: [.unsafeFlags(["-Xlinker", "-no_application_extension"])])
    ]
)
