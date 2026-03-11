#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    sudo "$0" "$@"
    exit $?
fi

# Console colors
GREEN='\033[0;32m'
NC='\033[0m'

systemctl enable --now downtime-bot
#echo -e "${GREEN}Downtime Bot started${NC}"
echo -e "Downtime Bot ${GREEN}started${NC}"

