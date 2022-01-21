cc_library(
    name = "phoenix",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_com_ctre_phoenix_api-cpp_headers//:headers",
        "@__bazelrio_com_ctre_phoenix_cci_headers//:headers",
        "@__bazelrio_com_ctre_phoenix_wpiapi-cpp_headers//:headers",
        "//libraries/cpp/wpilib/wpilibc",
    ] + select({
        "@bazel_tools//src/conditions:windows": [
            "@__bazelrio_com_ctre_phoenix_wpiapi-cpp_windowsx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_api-cpp_windowsx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_cci-sim_windowsx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simtalonsrx_windowsx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simvictorspx_windowsx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simtalonfx_windowsx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simpigeonimu_windowsx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simcancoder_windowsx86-64//:shared_libs",
        ],
        "@bazel_tools//src/conditions:linux_x86_64": [
            "@__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_api-cpp_linuxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_cci-sim_linuxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simtalonsrx_linuxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simvictorspx_linuxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simtalonfx_linuxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simpigeonimu_linuxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simcancoder_linuxx86-64//:shared_libs",
        ],
        "@bazel_tools//src/conditions:darwin": [
            "@__bazelrio_com_ctre_phoenix_wpiapi-cpp_osxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_api-cpp_osxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_cci-sim_osxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simtalonsrx_osxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simvictorspx_osxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simtalonfx_osxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simpigeonimu_osxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simcancoder_osxx86-64//:shared_libs",
        ],
        "//constraints/is_roborio:roborio": [
            "@__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxathena//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_cci_linuxathena//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_api-cpp_linuxathena//:shared_libs",
        ],
    }),
)

cc_library(
    name = "jni",
    visibility = ["//visibility:public"],
    deps = select({
        "@bazel_tools//src/conditions:windows": [
            "@__bazelrio_com_ctre_phoenix_sim_cci-sim_windowsx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simtalonsrx_windowsx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simtalonfx_windowsx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simvictorspx_windowsx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simpigeonimu_windowsx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simcancoder_windowsx86-64//:shared_libs",
        ],
        "@bazel_tools//src/conditions:linux_x86_64": [
            "@__bazelrio_com_ctre_phoenix_sim_cci-sim_linuxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simtalonsrx_linuxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simtalonfx_linuxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simvictorspx_linuxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simpigeonimu_linuxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simcancoder_linuxx86-64//:shared_libs",
        ],
        "@bazel_tools//src/conditions:darwin": [
            "@__bazelrio_com_ctre_phoenix_sim_cci-sim_osxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simtalonsrx_osxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simtalonfx_osxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simvictorspx_osxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simpigeonimu_osxx86-64//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_sim_simcancoder_osxx86-64//:shared_libs",
        ],
        "//constraints/is_roborio:roborio": [
            "@__bazelrio_com_ctre_phoenix_cci_linuxathena//:shared_libs",
        ],
    }),
)
