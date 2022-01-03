navx_source_build = """cc_library(
    name = "libs",
    copts = ["-w"], # silence compile warnings
    srcs = glob(["*.cpp"]),
    hdrs = glob(["*.h"]),
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_com_kauailabs_navx_frc_navx-cpp_headers//:headers",
        "@bazelrio//libraries/cpp/wpilib/wpilibc",
    ],
)
"""
