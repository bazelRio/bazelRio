cc_library(
    name = "phoenix",
    srcs = [
        "@__bazelrio_com_ctre_phoenix_api-cpp_linuxathenastatic//:all",
        "@__bazelrio_com_ctre_phoenix_canutils_linuxathenastatic//:all",
        "@__bazelrio_com_ctre_phoenix_cci_linuxathenastatic//:all",
        "@__bazelrio_com_ctre_phoenix_core_linuxathenastatic//:all",
        "@__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxathenastatic//:all",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_com_ctre_phoenix_api-cpp_headers//:headers",
        "@__bazelrio_com_ctre_phoenix_canutils_headers//:headers",
        "@__bazelrio_com_ctre_phoenix_cci_headers//:headers",
        "@__bazelrio_com_ctre_phoenix_core_headers//:headers",
        "@__bazelrio_com_ctre_phoenix_wpiapi-cpp_headers//:headers",
        "@bazelrio//libraries/wpilibc",
    ],
)
