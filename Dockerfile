FROM  goolashe/sillytavern:latest

COPY config.yaml ./config
COPY config.yaml ./

CMD [ "./docker-entrypoint.sh" ]

