FROM miningcontainers/xmrig:latest



COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["./docker-entrypoint.sh"]

