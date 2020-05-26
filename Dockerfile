FROM alpine:3.11
RUN apk add --no-cache ca-certificates git git-lfs openssh curl perl

ADD posix/* /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/clone"]
