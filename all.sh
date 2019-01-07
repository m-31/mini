#!/bin/sh
set -eo pipefail
./compile.sh
./build.sh
./run.sh
curl -v localhost:8080/this/is/a/test/url?and=this
