# Basisimage
FROM ghcr.io/home-assistant/amd64-base:3.18

# Installiere Python & can-utils
RUN apk add --no-cache python3 py3-pip can-utils

# Setze Arbeitsverzeichnis
WORKDIR /usr/src/app

# Kopiere Skripte
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Starte das Script
CMD ["/run.sh"]

