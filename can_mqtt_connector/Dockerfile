# Basisimage
FROM ghcr.io/home-assistant/base:latest

# Installiere Python & can-utils
RUN apk add --no-cache python3 py3-pip can-utils

# Setze Arbeitsverzeichnis
WORKDIR /usr/src/app

# Kopiere Skript
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Falls du ein Python-Skript hast, kopiere es auch:
COPY your_script.py /usr/src/app/your_script.py

# Starte dein Script
CMD ["/run.sh"]
