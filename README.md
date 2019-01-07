# mini

## overview

This is just a primitive web service running within docker.
Every request is answered by `HTTP/1.1 200 OK` and
with a text that reads like this: *I was called with 'this/is/a/test/url'*


## usage
You can compile the go application via `./compile` and
build the docker image via `./build.sh`

You can start the service with `./run.sh` - if it
was not build previously it pulls the image from 
docker hub.

You can test the service by calling

    curl -v localhost:8080/this/is/a/test/url?and=this
    * TCP_NODELAY set
    * Connected to localhost (::1) port 8080 (#0)
    > GET /this/is/a/test/url?and=this HTTP/1.1
    > Host: localhost:8080
    > User-Agent: curl/7.54.0
    > Accept: */*
    >
    < HTTP/1.1 200 OK
    < Date: Mon, 07 Jan 2019 20:24:23 GMT
    < Content-Length: 38
    < Content-Type: text/plain; charset=utf-8
    <
    * Connection #0 to host localhost left intact
    I was called with 'this/is/a/test/url'


## release

If you are the author :-) you can release a newly build
image with the following

    docker login
    docker push messier31/mini