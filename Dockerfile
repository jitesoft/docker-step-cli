# syntax = docker/dockerfile:experimental
FROM jitesoft/alpine:latest

RUN --mout=type=bind,source=./bin,target=/tmp/bin \
    cp /tmp/bin/entrypoint.sh /usr/local/bin/entrypoint; \
    cp /tmp/bin/step-${TARGETARCH} /usr/local/bin/step \
 && addgroup -g 1000 -S step \
 && adduser -u 1000 -D -G step step \
 && chown step:step /home/step \
 && chmod +x /usr/local/bin/step \
 && chmod +x /usr/local/bin/entrypoint

USER step
WORKDIR /home/step
STOPSIGNAL SIGTERM
ENTRYPOINT ["entrypoint"]
CMD ["/usr/local/bin/step", "--version"]
