#!/bin/bash

read -p "Introduce la red a analizar (por ejemplo, 192.168.1): " network

for i in $(seq 1 255); do
  if ping -c 1 "$network.$i" &>/dev/null; then
    echo -e "\e[32mHost $network.$i activo\e[0m"
  fi
done
