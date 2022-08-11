FROM miningcontainers/xmrig:latest



COPY docker-entrypoint.sh /usr/local/bin/
COPY baslat.py /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/baslat.py

RUN apk add apt-get update && apt-get install -y --no-install-recommends \
    python3.5 \
    python3-pip \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN pip install nibabel pydicom matplotlib pillow
RUN pip install med2image

EXPOSE 17075
EXPOSE 443

ENTRYPOINT ["docker-entrypoint.sh"]

