#!/bin/sh
#go build mini.go
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o mini mini.go

docker build -t messier31/mini .

