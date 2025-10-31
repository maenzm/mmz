#!/bin/bash

# --- 1. can-utils installieren (Dauerhaft im Container) ---
# Führt die Installation des Pakets aus. Diese Befehle werden 
# bei JEDEM Start des Add-ons ausgeführt.
echo "Installiere can-utils..."
apk update
apk add can-utils

apk add python3

pip3 install python-can
pip install paho-mqtt

sudo slcand -o -c -s6 /dev/serial/by-id/usb-Openlight_Labs_CANable2_b158aa7_github.com_normaldotcom_canable2.git_209035805741-if00 can0
sudo ifconfig can0 up 

# --- 2. Das Python-Skript ausführen ---
# Kopiere oder verschiebe dein Python-Skript (z.B. mqtt_befueller.py) 
# am besten in den /config Ordner, um es hier aufrufen zu können.
echo "Starte MQTT Skript..."

# Passe den Pfad zu deinem Skript an. Der /config-Ordner von HA wird im 
# Add-on oft gemountet. Wenn du es dort abgelegt hast:
python3 /config/test.py 

# Wichtig: Das Add-on muss laufen, damit der Container nicht stoppt. 
# Füge eine Endlosschleife hinzu, solange dein Python-Skript im Hintergrund läuft.
# Wenn dein Python-Skript selbst im Vordergrund laufen soll, entferne das '&' und die 'while' Schleife.
#while true; do
#    sleep 30
#done
