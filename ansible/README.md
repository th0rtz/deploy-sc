## ACME Configuration for Traefik
https://github.com/go-acme/lego

## For Ovh API
https://eu.api.ovh.com/createToken/

```
    GET /domain/zone/*
    PUT /domain/zone/*
    POST /domain/zone/*
    DELETE /domain/zone/*
```

## Traefik default catch all

No more 404 on unconfigured domain.

```
    touch /home/traefik/default_web/index.html
    docker run -itd --network traefik -l "traefik.frontend.rule=HostRegexp:{catchall:.*}" -l "traefik.frontend.priority=1" -l "traefik.enable=true" -v /home/traefik/default_web/:/usr/local/apache2/htdocs/ httpd:latest
```

_source:_ https://www.techjunktrunk.com/docker/2017/11/03/traefik-default-server-catch-all/