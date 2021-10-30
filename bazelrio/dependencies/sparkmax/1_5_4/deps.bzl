load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_static")

def setup_sparkmax_1_5_4_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-cpp_headers",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-cpp/1.5.4/SparkMax-cpp-1.5.4-headers.zip",
        sha256 = "e5c5c8c3e72b399101ee1056279d72540554ffb149d9351036f8d977b36e3c1f",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-driver_headers",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-driver/1.5.4/SparkMax-driver-1.5.4-headers.zip",
        sha256 = "c3984a9c073125bedb1a299c1e8e831b43e728b83dbc10d8e0032cb74186fed2",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-cpp_windowsx86-64",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-cpp/1.5.4/SparkMax-cpp-1.5.4-windowsx86-64.zip",
        sha256 = "d8db275ce8b3ff2850a465486804bf85fbb25022183254be53630e959d6a4753",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-cpp_windowsx86-64static",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-cpp/1.5.4/SparkMax-cpp-1.5.4-windowsx86-64static.zip",
        sha256 = "5f7b16af472c7eb334351206a8398c920458b782cbd77c0e6f8c0395b18534d6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-cpp_linuxx86-64",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-cpp/1.5.4/SparkMax-cpp-1.5.4-linuxx86-64.zip",
        sha256 = "a4b47bb6f8ee872d38a14ed6d807fd33b26273b6979d722a2c72cceb5ac3b75c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-cpp_linuxx86-64static",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-cpp/1.5.4/SparkMax-cpp-1.5.4-linuxx86-64static.zip",
        sha256 = "a0b95a982975a258f9ea0e44b02b2e6429e0d5fa3ebdaea0192bf52259ae5724",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-cpp_linuxathena",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-cpp/1.5.4/SparkMax-cpp-1.5.4-linuxathena.zip",
        sha256 = "df0c97373fa3c033a552cf15d5b9afcd6d9231737f6bca8cf1c4df63c2d30658",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-cpp_linuxathenastatic",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-cpp/1.5.4/SparkMax-cpp-1.5.4-linuxathenastatic.zip",
        sha256 = "02442954014ad8439cb277351bbb373deb5a898391777baa66f63bdf0f4e000d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-cpp_osxx86-64",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-cpp/1.5.4/SparkMax-cpp-1.5.4-osxx86-64.zip",
        sha256 = "cfbf81fe88cc5fd3c9a1390b2414fffe835abccd285118df7049911709884992",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-cpp_osxx86-64static",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-cpp/1.5.4/SparkMax-cpp-1.5.4-osxx86-64static.zip",
        sha256 = "f02fe4702f9d548ed35fb44f352e0767044ce17808f5f8bda79d3c4eaf75220e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-driver_windowsx86-64",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-driver/1.5.4/SparkMax-driver-1.5.4-windowsx86-64.zip",
        sha256 = "4ca674c6e4fcb72410a96ec69d654b96c251244268e70892858badaeb1c831ac",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-driver_windowsx86-64static",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-driver/1.5.4/SparkMax-driver-1.5.4-windowsx86-64static.zip",
        sha256 = "9817941c76fcb421bc8c052a2c92e4056207c2ab565bc0545be73d6f53d496d8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-driver_linuxx86-64",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-driver/1.5.4/SparkMax-driver-1.5.4-linuxx86-64.zip",
        sha256 = "5d074a8e3ea590bbf84d8010ce2dbfb5f960418955cbbb0fc66cd653c07d0084",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-driver_linuxx86-64static",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-driver/1.5.4/SparkMax-driver-1.5.4-linuxx86-64static.zip",
        sha256 = "f880873a0e02984165f10549f0b3f05072648f22f800604a8fc9b8118191fbe1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-driver_linuxathena",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-driver/1.5.4/SparkMax-driver-1.5.4-linuxathena.zip",
        sha256 = "85f430e7f14635e4556d5e9147d9dda7f0180f6b487f8959c96a635424b8f11a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-driver_linuxathenastatic",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-driver/1.5.4/SparkMax-driver-1.5.4-linuxathenastatic.zip",
        sha256 = "43c6bb9c5ec30cc854397200f03b9833cca760eaf526513bd44250b38597ebe3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-driver_osxx86-64",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-driver/1.5.4/SparkMax-driver-1.5.4-osxx86-64.zip",
        sha256 = "6e9d0902d2a6a36f6e58df763144fbdb211af25fe9c348848a8e13015cbb5990",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-driver_osxx86-64static",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-driver/1.5.4/SparkMax-driver-1.5.4-osxx86-64static.zip",
        sha256 = "13c0e148bfccea862476c6c32aad878d021fb907d723fc7093e816dc0ecf5c05",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_revrobotics_frc_sparkmax-java",
        artifact = "com.revrobotics.frc:SparkMax-java:1.5.4",
        artifact_sha256 = "223945424413414a207b1cab295ee20d88bd9fbde87ceed0c2b258188984070f",
        server_urls = ["http://www.revrobotics.com/content/sw/max/sdk/maven"],
    )
