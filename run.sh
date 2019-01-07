#!/bin/sh
docker stop $(docker ps -q -f expose=8080) 2>/dev/null
docker run -d -p 8080:8080 messier31/mini
echo "mini is running on port 8080"

