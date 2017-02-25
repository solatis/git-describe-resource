FROM alpine

RUN apk add --no-cache \
  bash \
  git \
  openssh-client \
  ca-certificates

COPY assets/check /opt/resource/check
COPY assets/in /opt/resource/in
COPY assets/out /opt/resource/out

RUN chmod +x /opt/resource/*
