#!/bin/bash

echo "===================================="
echo " Linux Software Installation Tool "
echo "===================================="

echo "1. Install Application"
echo "2. Remove Application"
echo "3. Exit"

read -p "Choose an option: " OPTION

if [ "$OPTION" == "1" ]
then

echo "Select Application to Install"

echo "1. Google Chrome"
echo "2. VLC Media Player"
echo "3. Telegram Desktop"
echo "4. Adobe Reader (Evince)"
echo "5. WPS Office"
echo "6. Git (example repository package)"

read -p "Enter option: " APP

case $APP in

1)
echo "Installing Google Chrome..."
sudo yum install -y https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
;;

2)
echo "Installing VLC..."
sudo yum install -y epel-release
sudo yum install -y vlc
;;

3)
echo "Installing Telegram Desktop..."
sudo yum install -y telegram-desktop
;;

4)
echo "Installing Adobe Reader alternative (Evince)..."
sudo yum install -y evince
;;

5)
echo "Installing WPS Office..."
sudo rpm -ivh https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/11711/wps-office-11.1.0.x86_64.rpm
;;

6)
echo "Installing Git..."
sudo yum install -y git
;;

*)
echo "Invalid option"
;;

esac

elif [ "$OPTION" == "2" ]
then

echo "Enter application name to remove:"
read APP

sudo yum remove -y $APP

echo "$APP removed successfully."

elif [ "$OPTION" == "3" ]
then

echo "Exiting..."

else

echo "Invalid option selected."

fi
