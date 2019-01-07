FROM scratch
MAINTAINER Michael Meyling <search@meyling.com>
EXPOSE 8080
ENTRYPOINT ["/mini"]
ADD mini /mini
