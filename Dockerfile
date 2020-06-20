FROM golang:1.14 AS build
RUN apt-get update && apt-get install patch -y
WORKDIR /go/src/bazelisk
RUN go mod init dstream.cloud/build
RUN go get github.com/bazelbuild/bazelisk@v1.5.0
