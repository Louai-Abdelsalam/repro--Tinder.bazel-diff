# repro--Tinder.bazel-diff

### issue reproduction steps:
1- `bazel run //:bazel-diff -- generate-hashes --verbose --workspacePath=$(pwd) --bazelPath=bazel starting_hashes.json`

2- `git apply patch.patch`

3- `bazel run //:bazel-diff -- generate-hashes --verbose --workspacePath=$(pwd) --bazelPath=bazel final_hashes.json`

4- `bazel run //:bazel-diff -- get-impacted-targets --startingHashes=starting_hashes.json --finalHashes=final_hashes.json --output=impacted_targets.txt`

5- `bazel query 'tests(//...) except attr(tags, manual, //...)' > test_targets.txt`

6- `comm -1 -2 <(sort ./bazel-bin/bazel-diff.runfiles/repro/impacted_targets.txt) <(sort test_targets.txt)`

Expected to see `//project:treadmill_tests` in the output, since the `cryptography` package is a dependency of the `moto` package.
