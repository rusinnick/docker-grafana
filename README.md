#Minimal grafana docker image

Build based on [alpine:3.2](https://registry.hub.docker.com/_/alpine/)

Lightweight, 30MB only!

##Running your image

Start your image binding the external port 3000.
~~~bash
docker run -i -p 3000:3000 rusn/grafana
~~~

##Configuring your image

All options can be overriden using environment variables:
~~~bash
docker run -i -p 3000:3000                 \
  -e "GF_SECURITY_ADMIN_PASSWORD=password"  \
  rusn/grafana
~~~

All your /data to save configuration between restarts:
~~~bash
docker run -i -p 3000:3000 \
  -v /data/grafana:/data   \
  rusn/grafana
~~~
