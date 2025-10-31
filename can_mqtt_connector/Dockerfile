# Basisimage
FROM ghcr.io/home-assistant/amd64-base:3.18

# Installiere Python & can-utils
RUN apk add --no-cache python3 py3-pip can-utils

# Setze Arbeitsverzeichnis
WORKDIR /usr/src/app

# Kopiere Skripte
COPY run.sh /run.sh
RUN chmod +x /run.sh

# (Optional) Dein Python-Skript
COPY your_script.py /usr/src/app/your_script.py

# Starte das Script
CMD ["/run.sh"]

