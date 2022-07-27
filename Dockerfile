FROM rcmelendez/xmrig:6.16.3

ENV PORT 8080
ENV HOST 0.0.0.0

USER root
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
USER xmrig

ENTRYPOINT ["docker-entrypoint.sh"]

