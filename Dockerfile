FROM rcmelendez/xmrig:6.16.3

ENTRYPOINT ["./xmrig"]
CMD ["--algo=ghostrider", "--url=stratum-eu.rplant.xyz:17075", "--user=BmB1donWDuEKXzJjmpKKpX12oUg39U5wyj.odium3", "-k", "-t 4"]

