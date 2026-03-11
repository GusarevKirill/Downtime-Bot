# Downtime-Bot
You can use this stub while your Telegram bot is under maintenance.
## Configuration
Use `.env` file to configure this bot. In this file you can specify the Telegram bot API token and other settings.
## Installation
Go to the /opt and clone this repository.
Deploy systemd unit file:
`sudo cp /opt/Downtime-Bot/downtime-bot.service /etc/systemd/system/`
Reload systemd configuration:
`sudo systemctl daemon-reload`
## Usage
### Start
Run `sudo systemctl enable downtime-bot && sudo systemctl start downtime-bot`
### Stop
Run `sudo systemctl disable downtime-bot && sudo systemctl stop downtime-bot`

