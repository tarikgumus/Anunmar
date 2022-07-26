FROM rcmelendez/xmrig:6.16.3
USER root
COPY docker-entrypoint.sh /usr/local/bin/
USER 1001
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]

