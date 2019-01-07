#!/bin/sh
set -eo pipefail
CONTAINER=$(docker ps -q -f expose=8080) 2>/dev/null
[ "x$CONTAINER" != "x" ] && echo "stopping container running on 8080" && docker stop ${CONTAINER} >/dev/null
docker run -l fatal -d -p 8080:8080 messier31/mini >/dev/null
echo "mini is running on port 8080"
