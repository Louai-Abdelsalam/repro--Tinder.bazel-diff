workspace(name = "repro")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")

####################################################################
# Python3
####################################################################

RULES_PYTHON_VERSION = "0.12.0"

http_archive(
    name = "rules_python",
    sha256 = "b593d13bb43c94ce94b483c2858e53a9b811f6f10e1e0eedc61073bd90e58d9c",
    strip_prefix = "rules_python-%s" % RULES_PYTHON_VERSION,
    urls = [
        "https://github.com/bazelbuild/rules_python/archive/%s.tar.gz" % RULES_PYTHON_VERSION,
    ],
)

load("@rules_python//python:repositories.bzl", "python_register_toolchains")

python_register_toolchains(
    name = "python3_9",
    python_version = "3.9.12",
    register_toolchains = False,
)

load("//:external_python_deps_lazy_repos.bzl", "pip_parse_repos_macro")

pip_parse_repos_macro()

load("//:external_python_deps_installer.bzl", "install_python_deps")

install_python_deps()

register_toolchains(
    "//:py_toolchain",
)

####################################################################
# bazel_diff
####################################################################

BAZEL_DIFF_VERSION = "4.8.0"

http_jar(
    name = "bazel_diff",
    sha256 = "9c4546623a8b9444c06370165ea79a897fcb9881573b18fa5c9ee5c8ba0867e2",
    urls = [
        "https://github.com/Tinder/bazel-diff/releases/download/%s/bazel-diff_deploy.jar" % BAZEL_DIFF_VERSION,
    ],
)
