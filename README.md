# docker-autoheal-protonvpn

Monitor and restart unhealthy protonvpn containers. Based on [docker-autoheal](https://github.com/willfarrell/docker-autoheal/)

This monitors a container with the label autoheal_vpn=true and restarts it's VPN container (statically named with suffix `_protonvpn`) and then the container on which the label was set. This is used when rate limiting or IP bans are detected from the application container, restarting the VPN container refreshes the IP and resets the rate-limits


```
a) Apply the label `autoheal_vpn=true` to your container to have it watched.

