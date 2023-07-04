FROM  homeryan/sillytavern

COPY config.conf ./

CMD [ "./docker-entrypoint.sh" ]

