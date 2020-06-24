# syntax = docker/dockerfile:experimental
FROM jitesoft/alpine:latest
ARG VERSION
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft" \
      maintainer.org.uri="https://jitesoft.com" \
      com.jitesoft.project.repo.type="git" \
      com.jitesoft.project.repo.uri="https://gitlab.com/jitesoft/dockerfiles/step-cli" \
      com.jitesoft.project.repo.issues="https://gitlab.com/jitesoft/dockerfiles/step-cli/issues" \
      com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/step-cli" \
      com.jitesoft.app.step-cli.version="${VERSION}"

ARG TARGETARCH

RUN --mount=type=bind,source=./bin,target=/tmp/bin \
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
