FROM debian:stretch-slim

RUN set -ex \
    && apt-get update \
    && apt-get install -y curl ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* /var/tmp/*

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
