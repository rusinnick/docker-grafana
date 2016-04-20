# Minimal grafana docker image

Build based on [alpine:3.3](https://registry.hub.docker.com/_/alpine/)

[![](https://imagelayers.io/badge/rusn/grafana:latest.svg)](https://imagelayers.io/?images=rusn/grafana:latest)

## Running your image

Start your image binding the external port.

```
docker run -i -p 3000:3000 rusn/grafana
```

## Configuring your image

All options can be overriden using environment variables:

```
docker run -i -p 3000:3000 -e "GF_SECURITY_ADMIN_PASSWORD=password" rusn/grafana
```

Mount /data volume to save configuration between restarts:

```
docker run -i -p 3000:3000 -v /data/grafana:/data rusn/grafana
```
