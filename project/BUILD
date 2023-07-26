load("@treadmill//:requirements.bzl", "requirement")
load("@rules_python//python:defs.bzl", "py_test")

py_test(
    name = "treadmill_tests",
    size = "medium",
    srcs = glob(["tests/**/*.py"]),
    main = "run_tests.py",
    deps = [
        requirement("pytest"),
        requirement("pytest_cov"),
        requirement("mock"),
        requirement("moto"),
    ],
)
