// swift-tools-version:5.5
import PackageDescription
import Foundation

let localBuild = ProcessInfo.processInfo.environment["localBuild"] == "true"
let buildMode = ProcessInfo.processInfo.environment["releaseBuild"] == "true" ? "release" : "debug"

// BEGIN KMMBRIDGE VARIABLES BLOCK FOR 'composeApp' (do not edit)
let remoteComposeAppUrl = "https://"
let remoteComposeAppChecksum = ""
let composeAppPackageName = "ComposeApp"
// END KMMBRIDGE BLOCK FOR 'composeApp'

let package = Package(
    name: "ComposeApp",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: composeAppPackageName,
            targets: [composeAppPackageName]
        ),
    ],
    targets: [
        (localBuild ? .binaryTarget(
            name: composeAppPackageName,
            path: "composeApp/build/XCFrameworks/\(buildMode)/ComposeApp.xcframework"
        ) : .binaryTarget(
            name: composeAppPackageName,
            url: remoteComposeAppUrl,
            checksum: remoteComposeAppChecksum
        )),
    ]
)
