FROM miningcontainers/xmrig:latest



COPY docker-entrypoint.sh /usr/local/bin/


ENV PORT=80

ENTRYPOINT ["docker-entrypoint.sh"]

