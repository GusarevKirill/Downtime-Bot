#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    sudo "$0" "$@"
    exit $?
fi

systemctl disable downtime-bot && systemctl stop downtime-bot

