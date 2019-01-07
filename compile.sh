#!/bin/sh
set -eo pipefail

if !(which go); then
    echo "compile mini application with go compiler within docker"
    docker run --rm \
           -v "$PWD":/usr/src \
           -e CGO_ENABLED=0  \
           -e GOOS=linux \
           -w /usr/src \
           golang:latest go build -a -installsuffix cgo -o mini mini.go
else
    echo "compile mini application with local go compiler"
    CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o mini mini.go
fi
echo "compilation finished"
