# local-proxy

Haproxy based local proxy service to access web applications via local network but prepared using proxy protocol

## Run

Build the image and start the proxy:

    docker build -t local-proxy .
    docker run -d -p 80:80 -p 443:443 -e letsencrypt=<acme-backend-host> local-proxy

The `letsencrypt` variable is required and points to the backend that serves
the ACME challenges (`.well-known/acme-challenge/`).

## Proxy protocol

By default the frontends accept plain connections. To make HAProxy listen
for connections that carry a PROXY protocol header, start the container with:

    docker run -d -p 80:80 -p 443:443 -e PROXY_PROTOCOL=TRUE local-proxy
