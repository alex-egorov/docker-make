FROM docker:18.01.0-ce
MAINTAINER Alex Egorov <alex202@egorov.net>

ARG VCS_REF
ARG BUILD_DATE

ENV DOCKER_VER ${DOCKER_VER}

# Metadata
LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/alex-egorov/docker-make" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile="/Dockerfile"

RUN apk add --no-cache curl make git

