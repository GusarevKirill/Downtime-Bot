#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    sudo "$0" "$@"
    exit $?
fi

# Console colors
RED='\033[0;31m'
NC='\033[0m'

systemctl disable --now downtime-bot
echo -e "Downtime Bot ${RED}stopped${NC}"

