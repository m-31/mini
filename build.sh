#!/bin/sh
set -eo pipefail

echo "building local docker image for mini application"
docker build -t messier31/mini .
echo "docker build finished"
