load("@io_bazel_rules_docker//go:image.bzl", "go_image")

go_image(
    name = "test_bazel_go",
    srcs = ["src/main.go"],
    goarch = "amd64",
    goos = "linux",
    static = "on",
)
