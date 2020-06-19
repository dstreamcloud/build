FROM golang:1.14 AS build
RUN apt-get update && apt-get install patch -y
RUN go get github.com/bazelbuild/bazelisk
