FROM arm32v7/alpine:3.12

MAINTAINER bmhoang@outlook.com

RUN apk update \
    && apk add squid=4.11-r0 \
    && apk add curl \
    && rm -rf /var/cache/apk/*

COPY start-squid.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/start-squid.sh"]
