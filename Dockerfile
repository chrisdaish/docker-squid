FROM alpine:3.3

MAINTAINER simon.perkins@gmail.com

RUN apk update \
    && apk add squid=3.5.15-r1 \
    && apk add curl \
    && rm -rf /var/cache/apk/*

COPY start-squid.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/start-squid.sh"]
