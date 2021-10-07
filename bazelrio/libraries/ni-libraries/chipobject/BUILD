cc_library(
    name = "chipobject",
    srcs = [
        "@__bazelrio_edu_wpi_first_ni-libraries_chipobject_none_linuxathena//:all",
    ],
    visibility = ["//visibility:public"],
)

cc_binary(
    name = "chipobject.so",
    deps = [":chipobject"],
    visibility = ["//visibility:public"],
    linkshared = 1,
)
