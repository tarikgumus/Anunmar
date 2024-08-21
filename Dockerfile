FROM  goolashe/sillytavern:latest

COPY config.yaml ./

CMD [ "./docker-entrypoint.sh" ]

