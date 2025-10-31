ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:latest
FROM ${BUILD_FROM}

# Labels (optional, aber hilfreich)
LABEL maintainer="deinname@example.com"

# Kopiere dein Skript ins Image
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# Starte dein Skript beim Container-Start
CMD [ "/run.sh" ]
