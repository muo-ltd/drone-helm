#!/bin/bash

set -e

export GOOS=linux
export GOARCH=386
go get -u github.com/golang/dep/cmd/dep
dep ensure
echo "Go Build"
go build
echo "Docker Build"
docker build -t drone-helm .
