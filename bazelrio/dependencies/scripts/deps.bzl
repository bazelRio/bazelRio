load("@rules_jvm_external//:defs.bzl", "maven_install")
load("@rules_python//python:pip.bzl", "pip_install")

def setup_scripts_dependencies():
    maven_install(
        name = "__bazelrio_maven_deps",
        artifacts = [
            "com.hierynomus:sshj:0.32.0",
            "me.tongfei:progressbar:0.9.2",
            "net.sourceforge.argparse4j:argparse4j:0.9.0",
            "org.slf4j:slf4j-nop:1.7.32",
        ],
        repositories = [
            "https://repo1.maven.org/maven2",
        ],
    )

    pip_install(
        name = "__bazelrio_wpiformat_pip_deps",
        requirements = "@bazelrio//scripts/wpiformat:requirements.txt",
    )
