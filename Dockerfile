FROM alpine:3.2

MAINTAINER chrisdaish@gmail.com

RUN apk update \
    && apk add squid; \
    && rm -rf /var/cache/apk/*

CMD ["squid"]
