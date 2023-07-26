load("@treadmill//:requirements.bzl", treadmill_install_deps = "install_deps")

# https://github.com/bazelbuild/rules_python/tree/0.10.0#fetch-pip-dependencies-lazily
def install_python_deps():
    """
    When using `pip_parse` to resolve python deps, we have to call their respective external repo's `install_deps` macro in order to declare the deps.
    """
    treadmill_install_deps()
