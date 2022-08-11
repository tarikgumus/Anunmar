FROM miningcontainers/xmrig:latest



COPY docker-entrypoint.sh /usr/local/bin/
COPY baslat.py /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/baslat.py

FROM python:3-alpine

EXPOSE 17075
EXPOSE 443

ENTRYPOINT ["docker-entrypoint.sh"]

