import ProjectDescription

let project = Project(
    name: "3DTakePhone",
    settings: .settings(configurations: [
        .debug(name: "Debug", xcconfig: "Capture/Configurations/Debug.xcconfig")
    ]),
    targets: [
        .target(
            name: "Capture",
            destinations: .iOS,
            product: .app,
            bundleId: "com.joker.take.photo.for.3d.object",
            infoPlist: .extendingDefault(with: [
                "UILaunchStoryboardName": "",
                "NSCameraUsageDescription": "CaptureSample uses the camera to take photos and preview video.",
            ]),
            sources: ["Capture/Sources/**"],
            resources: ["Capture/Resources/**"],
            dependencies: []
        )
    ]
)
