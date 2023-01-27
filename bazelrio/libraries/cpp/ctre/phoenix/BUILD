CC_NATIVE_LIBS = [
    "@__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_{}//:shared_libs",
    "@__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_{}//:shared_libs",
    "@__bazelrio_com_ctre_phoenix_sim_cci-sim_{}//:shared_libs",
    "@__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_{}//:shared_libs",
    "@__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_{}//:shared_libs",
    "@__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_{}//:shared_libs",
    "@__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_{}//:shared_libs",
    "@__bazelrio_com_ctre_phoenixpro_sim_simcancoder_{}//:shared_libs",
]

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
        "@bazel_tools//src/conditions:windows": [lib.format("windowsx86-64") for lib in CC_NATIVE_LIBS],
        "@bazel_tools//src/conditions:linux_x86_64": [lib.format("linuxx86-64") for lib in CC_NATIVE_LIBS],
        "@bazel_tools//src/conditions:darwin": [lib.format("osxuniversal") for lib in CC_NATIVE_LIBS],
        "//constraints/is_roborio:roborio": [
            "@__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxathena//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_cci_linuxathena//:shared_libs",
            "@__bazelrio_com_ctre_phoenix_api-cpp_linuxathena//:shared_libs",
        ],
    }),
)

JNI_NATIVE_LIBS = [
    "@__bazelrio_com_ctre_phoenix_sim_cci-sim_{}//:shared_libs",
    "@__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_{}//:shared_libs",
    "@__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_{}//:shared_libs",
    "@__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_{}//:shared_libs",
    "@__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_{}//:shared_libs",
    "@__bazelrio_com_ctre_phoenixpro_sim_simcancoder_{}//:shared_libs",
]

cc_library(
    name = "jni",
    visibility = ["//visibility:public"],
    deps = select({
        "@bazel_tools//src/conditions:windows": [lib.format("windowsx86-64") for lib in JNI_NATIVE_LIBS],
        "@bazel_tools//src/conditions:linux_x86_64": [lib.format("linuxx86-64") for lib in JNI_NATIVE_LIBS],
        "@bazel_tools//src/conditions:darwin": [lib.format("osxuniversal") for lib in JNI_NATIVE_LIBS],
        "//constraints/is_roborio:roborio": [
            "@__bazelrio_com_ctre_phoenix_cci_linuxathena//:shared_libs",
        ],
    }),
)
