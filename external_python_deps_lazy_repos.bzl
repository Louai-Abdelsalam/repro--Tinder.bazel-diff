load("@python3_9//:defs.bzl", "interpreter")
load("@rules_python//python:pip.bzl", "pip_parse")

# https://github.com/bazelbuild/rules_python/tree/0.10.0#fetch-pip-dependencies-lazily
def pip_parse_repos_macro():
    """
    This macro encapsulates all the external repos of python dependencies that are set up for lazy fetching.
    """
    pip_parse(
        name = "treadmill",
        python_interpreter_target = interpreter,
        requirements_lock = "//project:requirements.txt",
    )
    