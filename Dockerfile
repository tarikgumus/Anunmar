FROM  goolashe/sillytavern:latest

COPY config.conf ./

CMD [ "./docker-entrypoint.sh" ]

