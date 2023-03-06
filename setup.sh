#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y ruby git

sudo cp ./connectall.rb /usr/local/bin/connectall.rb

sudo chmod +x /usr/local/bin/connectall.rb

sudo cp ./33-midiusb.rules /etc/udev/rules.d/33-midiusb.rules

sudo udevadm control --reload
sudo service udev restart

sudo cp ./midi.service /lib/systemd/system/midi.service

sudo systemctl daemon-reload
sudo systemctl enable midi.service
sudo systemctl start midi.service

