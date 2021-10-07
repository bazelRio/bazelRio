java_import(
    name = "hal",
    jars = ["@__bazelrio_edu_wpi_first_hal_java//file"],
    deps = [":hal-jni"],
    visibility = ["//visibility:public"],
)

java_import(
    name = "hal-jni",
    jars = ["@__bazelrio_edu_wpi_first_hal_jni_linuxathena//file"],
    deps = ["//libraries/ni-libraries/chipobject:chipobject.so"],
    visibility = ["//visibility:public"],
)
