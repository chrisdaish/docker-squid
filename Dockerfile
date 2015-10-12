FROM alpine:3.2

MAINTAINER chrisdaish@gmail.com

RUN apk update \
    && apk add squid=3.5.4-r2 \
    && rm -rf /var/cache/apk/*

CMD ["squid"]
