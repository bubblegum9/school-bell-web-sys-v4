#!/bin/bash

echo "UPDATING SYSTEM"
yes | sudo apt update
yes | sudo apt full-upgrade
yes | sudo apt dist-upgrade
echo "CLEANING APT"
yes | sudo apt autoremove
yes | sudo apt clean
echo "INSTALLING PYTHON3 PIP, SMBUS (FOR LCD), VENV"
yes | sudo apt install python3-pip
yes | sudo apt install python3-smbus
yes | sudo apt install python3-venv

pip3 install -I flask RPi.GPIO python-dotenv tinydb gpiozero smbus gunicorn
sudo pip3 install flask RPi.GPIO python-dotenv tinydb gpiozero smbus gunicorn

echo "INSTALLING PYTHON LIB'S"
source /home/lex/school-bell-web-sys-v4/venv-coffee/bin/activate
pip3 install -I flask RPi.GPIO python-dotenv tinydb gpiozero smbus gunicorn
deactivate

#python3 -m venv venv-tofu
echo "run: source llamabell/bin/activate"
echo "to turn off type deactivate"

# copy sysd service
#sudo cp coffeebell.service /etc/systemd/system/
# copy apache2 service
#sudo cp coffeebell.conf /etc/apache2/sites-available/
# create apache2 symbolic link
# (a2ensite is a part of apache2)
#sudo a2ensite coffeebell.conf
#sudo systemctl enable coffeebell.service
#sudo systemctl start coffeebell.service
#sudo systemctl reload apache2
