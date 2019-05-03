docker run -d \
-v /var/run/docker.sock:/var/run/docker.sock \
-v portainer_data:/data \
-l traefik.domain= \
-l traefik.backend= \
-l traefik.port= \
-l traefik.frontend.rule="Host: " \
-l traefik.enable=true \
--network="traefik" \
portainer/portainer