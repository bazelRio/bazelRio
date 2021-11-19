load("@bazel_tools//tools/jdk:remote_java_repository.bzl", "remote_java_repository")

def configure_java_toolchain():
    # Based on the wpilib downloader
    # https://github.com/wpilibsuite/WPILibInstaller-Avalonia/blob/8a0bee9841ba645108a32ec818b7d1a7a3afe014/scripts/jdk.gradle
    VERSION = "11.0.12+7"
    URL = "https://github.com/adoptium/temurin11-binaries/releases/download/jdk-" + VERSION + "/OpenJDK11U-jdk_{}_hotspot_" + VERSION.replace("+", "_") + ".{}"

    remote_java_repository(
        name = "roboriojdk_windows",
        prefix = "roboriojdk",
        version = "11",
        exec_compatible_with = [
            "@platforms//os:windows",
        ],
        urls = [URL.format("x64_windows", ".zip")],
        sha256 = "c54123dd4b0d6473221539e7003b8ca1c1757c5588c46465565b03bf8781f807",
        strip_prefix = "jdk-" + VERSION,
    )

    remote_java_repository(
        name = "roboriojdk_linux",
        prefix = "roboriojdk",
        version = "11",
        exec_compatible_with = [
            "@platforms//os:linux",
        ],
        urls = [URL.format("x64_linux", ".tar.gz")],
        # sha256 = "c54123dd4b0d6473221539e7003b8ca1c1757c5588c46465565b03bf8781f807",
        strip_prefix = "jdk-" + VERSION,
    )

    remote_java_repository(
        name = "roboriojdk_osx",
        prefix = "roboriojdk",
        version = "11",
        exec_compatible_with = [
            "@platforms//os:osx",
        ],
        urls = [URL.format("x64_mac", ".tar.gz")],
        # sha256 = "c54123dd4b0d6473221539e7003b8ca1c1757c5588c46465565b03bf8781f807",
        strip_prefix = "jdk-" + VERSION,
    )
