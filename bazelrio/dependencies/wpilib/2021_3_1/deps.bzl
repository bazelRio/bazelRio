load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

filegroup_all = """filegroup(
    name = "all",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)
"""

cc_library_headers = """cc_library(
    name = "headers",
    hdrs = glob(["**"]),
    includes = ["."],
    visibility = ["//visibility:public"],
)
"""

def setup_wpilib_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-linuxathena.zip",
        sha256 = "637dc07b7a3e99b4a9ffbb73ff763e61baa379ac6dce56c8bd5ffbc8d91d722d",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "b3f3e6d4958a8f4b72e49df6658f5f3fcdc5114537b49f26263b04cc2c94edf4",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "8f4cc72163713512fcaddfc9f3f1790376659f6aaa2ed55c47155ca0b52a7169",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "9a0a8ac63c4d645d938e37ca4da0a040fc48a38e6d5f8689aa9c8eddec024600",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-headers.zip",
        sha256 = "c1bb5ba16138be092c52664147d26b45347d68fdb086c483c7ca8f6383bcab87",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_file,
        "__bazelrio_edu_wpi_first_wpilibj_java",
        urls = ["https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibj/wpilibj-java/2021.3.1/wpilibj-java-2021.3.1.jar"],
        sha256 = "85f41c78832a9b14367e76d2f8ee24b9b7162ac8eca15c123d9b8a15550b3e5a",
        downloaded_file_path = "wpilibj-java-2021.3.1.jar",
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-linuxathena.zip",
        sha256 = "e9de32abe3739697a3a92963c9eca4bf8755edfb0f11ac95e22d0190a3185f56",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "18d860d1be5dfcf104f9609f9bb2af666fda13e8d3608ef9b9e890b5c4c56785",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "48ca6f22deb800170c801944531557c8d109be4501418c719349519405ae6cc2",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "46f76a6ba82f395e19ba48c12c56b1d864b03f46498a0f42b6a15fe12d3aaa6a",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-headers.zip",
        sha256 = "81b4d98d7ae4f92b2887180aea29ef1e780c5570e3fdbe08e02183e54952bd62",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_file,
        "__bazelrio_edu_wpi_first_hal_java",
        urls = ["https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-java/2021.3.1/hal-java-2021.3.1.jar"],
        sha256 = "545af9fa528be65e6a89c4aee355dece300a38b6861ff0d29a5638d5e479b961",
        downloaded_file_path = "hal-java-2021.3.1.jar",
    )
    maybe(
        http_file,
        "__bazelrio_edu_wpi_first_hal_jni_linuxathena",
        urls = ["https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-jni/2021.3.1/hal-jni-2021.3.1-linuxathena.jar"],
        sha256 = "ddbf305e7308800161eed85f793e9e8df4560072df5997dd79142badf693a28a",
        downloaded_file_path = "hal-jni-2021.3.1.jar",
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-linuxathena.zip",
        sha256 = "ad48bae20f42850938a1758c9f82e54c5cb5e286ad0b09adb701d700bd7f8ec8",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "5e85e0a32ed520c1ea075087b3701769f2007fe8a9385831b1d947f70179cf8f",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "4a20ec638981025c0e41678ac7cea691d5a40121987b1309e6907255636d02cf",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "09c7914e5fcf4b26967e0bddb501c79d054de276a5724a9089b0e04d9e13e640",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-headers.zip",
        sha256 = "b2a96f7ce07198b139face9dc341c6550d5044fa32f48435b50d986ea5c8ee55",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_file,
        "__bazelrio_edu_wpi_first_wpiutil_java",
        urls = ["https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-java/2021.3.1/wpiutil-java-2021.3.1.jar"],
        sha256 = "d35f31eafe9aafb508ab39c5d273ff6a33d594fd0a7409c8aa9ffcf21ec6fbb2",
        downloaded_file_path = "wpiutil-java-2021.3.1.jar",
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-linuxathena.zip",
        sha256 = "dabb3d971cf0aee46d4b104d38abd47cc36219b025b299bfb9fea82e53deacc7",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "cd69aba9cc0b16fda738dcde53b1c8c138c616fd4af2e2de1877f66973fcc6d3",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "d6aedae1639db0fd538f7c519b97cf45441a6ec7c8220c3f564d7c3a7de71294",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "8daf5d2b4cf3e16db6b3ad3a309aade6315b9458abeb40b94d59cbb21ddac087",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-headers.zip",
        sha256 = "2451d44dc2a3d16ee315738336b792642a7b8dd8c4aef0f6b7b0fb80c0a527d2",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-linuxathena.zip",
        sha256 = "172d57588b8b7c26829fdc5a1ffaa938f65552a5e2f7cc28a510705f881de459",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "2ec3dcf69a2b0500aea1d5037aa79912a252c5c7f8aefd113c974e1559d88cf9",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "d5edb77e3ed15df710c7895636190ee2f89e47429f2925e015bd7b0025af4612",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "4d61ca32079050b825d5ee543a8293f52fb0cfca0d71d7c4bdd3f58cc689b73d",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-headers.zip",
        sha256 = "dac88ad40484aaa6721d190c23b33668fa11a86e32877458285c2ea678db54d3",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_file,
        "__bazelrio_edu_wpi_first_wpimath_java",
        urls = ["https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-java/2021.3.1/wpimath-java-2021.3.1.jar"],
        sha256 = "7e3e77bf3a28df3e7f0c12113fc2b0ec0050f9ab11a50182cafd4b2eeda7e076",
        downloaded_file_path = "wpimath-java-2021.3.1.jar",
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2021.3.1/cameraserver-cpp-2021.3.1-linuxathena.zip",
        sha256 = "d12ec6b78a3453c5e3cab275827abb1be2142e077532fc7dc32d03f36d04b3e8",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2021.3.1/cameraserver-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "c50e11d6feca3042e55c579a4cb9ead695b1f2d6ce4a0d3599533bd83521e7bf",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2021.3.1/cameraserver-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "2dbc4342d770995c7a53ca3fa984e55947a1049bf2a561d145671318c04277ce",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2021.3.1/cameraserver-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "b2353da4a8a68580a2c8aaaa348b80fc5903fb996c9747650735cdc272110885",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2021.3.1/cameraserver-cpp-2021.3.1-headers.zip",
        sha256 = "20822383b8a56d781f46a60023f2c49b3e80014af504b74a6793fc034cb1c13c",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_file,
        "__bazelrio_edu_wpi_first_cameraserver_java",
        urls = ["https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-java/2021.3.1/cameraserver-java-2021.3.1.jar"],
        sha256 = "ce387ca358d38ffbc390ea0478ebf835e40bd3c4f2c71d79bba4fcc7b4b0aa4c",
        downloaded_file_path = "cameraserver-java-2021.3.1.jar",
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2021.3.1/cscore-cpp-2021.3.1-linuxathena.zip",
        sha256 = "53fed9fb2526f52f88571803e63a35337f173197b19f041fdc70ee82f5846eec",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2021.3.1/cscore-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "02f8bdc027ac0779f7a97f2ac0996cf4884600868564a6534edef4eed45cf426",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2021.3.1/cscore-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "457668d0e9833e96e25c3581b47d6855cecdf137f79f906cd8c104dba0415791",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2021.3.1/cscore-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "e54461b678c838320304a28341c8031ff5d5d80cdd851cc525a1daa0f394cb1e",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2021.3.1/cscore-cpp-2021.3.1-headers.zip",
        sha256 = "4ff4560b32aaa664ca0869412c5ddd2bc2ed48ce9d9c771ece7a74c7df787e40",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-linuxathena.zip",
        sha256 = "5e3311ef761b4c79ebf67f78aed423d1650f3477120d4c483925e6b4c9d2eec6",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "9f819677632b807a7157b953ea81a8544cd5b31bfa54012dd1b3402dbdb5f748",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "208a85c8d238b17770fe1602fce027819d5b778eb438fa6ae09f971254f90a81",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "fd4b06175d22183ce97b0f8e2f47a103d8c32b45e67640d351ebc38e42c397b8",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-headers.zip",
        sha256 = "c919969657ce44a5a20cc84140997149082dbfda5cda7f170b68d2e94744921e",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_none_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2021.3.1/halsim_ds_socket-2021.3.1-windowsx86-64.zip",
        sha256 = "ece35a6e537c278d4e723d06f38b70248d268e77ff03642446e3ef407b3c6ba0",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_none_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2021.3.1/halsim_ds_socket-2021.3.1-linuxx86-64.zip",
        sha256 = "fed2c510c7d1306914fcac1e07b8b0b09d61ea12d92afc70714d6843122f8128",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_none_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2021.3.1/halsim_ds_socket-2021.3.1-osxx86-64.zip",
        sha256 = "72906f39507b6babe5864929d0c32d40b4f688615a36113ceefc07c323429b10",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_none_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2021.3.1/halsim_gui-2021.3.1-windowsx86-64.zip",
        sha256 = "6f7c04b1f1a17fced091b9057579837ca82909e17565140be77ffbd9eb6db679",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_none_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2021.3.1/halsim_gui-2021.3.1-linuxx86-64.zip",
        sha256 = "d77274cc63b382163b7c24ea54ff2b54570d23e109f7d3488785d6b9c263023f",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_none_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2021.3.1/halsim_gui-2021.3.1-osxx86-64.zip",
        sha256 = "e5da5864c4c75367e7627f074b3351a2031c1fc56f3a05f2ec42dc20e819aa4e",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_none_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2021.3.1/halsim_ws_client-2021.3.1-windowsx86-64.zip",
        sha256 = "80071475655a31cfe3c49cc1dd76cbf1136c12935789c279ff6727bc3dba238a",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_none_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2021.3.1/halsim_ws_client-2021.3.1-linuxx86-64.zip",
        sha256 = "da3cbc93ac263b2ccf4de7945d31861b3f247b7c42089cc9317c96c627c68537",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_none_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2021.3.1/halsim_ws_client-2021.3.1-osxx86-64.zip",
        sha256 = "e4ec269f9f26240bfd4c7711ed232340477c2e11be8594dc8a7c2c1a7591b39d",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_none_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2021.3.1/halsim_ws_server-2021.3.1-windowsx86-64.zip",
        sha256 = "89e3c28065a95adb925ea24813838450da10a585d4aaa837d18fe70c3c1db61a",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_none_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2021.3.1/halsim_ws_server-2021.3.1-linuxx86-64.zip",
        sha256 = "ccbc351ded760015279e74ef0cbc216073714cb72b1f2ef04253ab38861d19e0",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_none_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2021.3.1/halsim_ws_server-2021.3.1-osxx86-64.zip",
        sha256 = "4810a7254c60d1b90eb840c705aa30f0a326964b16eaac70aac70bf51d691eae",
        build_file_content = filegroup_all,
    )
