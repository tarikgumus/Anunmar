FROM miningcontainers/xmrig:latest

ENV PORT 8080
ENV HOST 0.0.0.0

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

