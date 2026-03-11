#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    sudo "$0" "$@"
    exit $?
fi

# Console colors
RED='\033[0;31m'
NC='\033[0m'

check_venv() {
    if ! python3 -m venv --help >/dev/null 2>&1; then
        return 1
    fi
    return 0
}

if ! check_venv; then
    echo -e "${RED}This program requires Python venv${NC}" >&2
    exit 1
fi
echo "Creating Python virtual environment..."
python3 -m venv venv
./venv/bin/python3 -m pip install --upgrade pip
echo "Installing dependencies..."
./venv/bin/python3 -m pip install -r requirements.txt
echo "Creating systemd unit..."
cp downtime-bot.service /etc/systemd/system/
echo "Reloading systemd configuration..."
systemctl daemon-reload

