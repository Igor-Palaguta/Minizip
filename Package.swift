// swift-tools-version:5.9
import PackageDescription

// Same sources and public headers as Minizip 1.0.0 podspec
let package = Package(
    name: "Minizip",
    platforms: [.iOS(.v12), .macOS(.v10_13), .tvOS(.v12), .watchOS(.v4)],
    products: [
        .library(name: "Minizip", targets: ["Minizip"])
    ],
    targets: [
        .target(
            name: "Minizip",
            path: "Vendor/Minizip",
            sources: [
                "aes",
                "ioapi.c",
                "ioapi_mem.c",
                "ioapi_buf.c",
                "unzip.c",
                "zip.c"
            ],
            // Symlinks to ioapi.h, unzip.h and zip.h
            publicHeadersPath: "include",
            linkerSettings: [.linkedLibrary("z")]
        )
    ]
)
