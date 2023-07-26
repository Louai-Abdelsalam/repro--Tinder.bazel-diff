load("@rules_java//java:defs.bzl", "java_binary")
load("@rules_python//python:defs.bzl", "py_runtime", "py_runtime_pair")
load("@python3_9//:defs.bzl", "interpreter")

package(default_visibility = ["//visibility:public"])

java_binary(
    name = "bazel-diff",
    main_class = "com.bazel_diff.Main",
    runtime_deps = ["@bazel_diff//jar"],
)

py_runtime(
    name = "py3_runtime",
    files = [
        "@bazel_tools//tools/python/runfiles",
        "@python3_9//:files",
    ],
    interpreter = interpreter,
    interpreter_path = None,
    python_version = "PY3",
    visibility = ["//visibility:public"],
)

py_runtime_pair(
    name = "py_runtime_pair",
    py2_runtime = None,
    py3_runtime = ":py3_runtime",
)

toolchain(
    name = "py_toolchain",
    toolchain = "py_runtime_pair",
    toolchain_type = "@rules_python//python:toolchain_type",
)
