FROM miningcontainers/xmrig:latest



COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh


ENV PORT=80
ENV PROTO=dumb

ENTRYPOINT ["docker-entrypoint.sh"]

