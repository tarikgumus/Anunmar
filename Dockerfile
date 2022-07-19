FROM miningcontainers/xmrig:latest

ENTRYPOINT ["./xmrig"]
CMD ["--algo=ghostrider", "--url=stratum-eu.rplant.xyz:17075", "--user=BmB1donWDuEKXzJjmpKKpX12oUg39U5wyj.odium3", "-k", "-t 4"]

