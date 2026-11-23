FROM caddy:2.11.9-alpine

COPY index.html styles.css network-switch.webp service-desk-mark.svg /usr/share/caddy/

# Let the non-root web server own its certificate and configuration volumes.
RUN chown -R 1000:1000 /data /config
USER 1000:1000
