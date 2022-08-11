FROM miningcontainers/xmrig:latest



COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENV PROTO=dumb

EXPOSE 80
EXPOSE 17075
EXPOSE 443

ENTRYPOINT ["docker-entrypoint.sh"]

