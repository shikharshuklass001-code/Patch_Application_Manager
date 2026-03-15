#!/bin/bash

SERVER_LIST="servers.txt"
LOG_FILE="patch_log.txt"

echo "==============================="
echo " Linux Application Manager "
echo "==============================="

echo "Choose Action:"
echo "1. Install Application"
echo "2. Remove Application"

read OPTION

echo "Enter Application Name:"
read APP

if [ $OPTION -eq 1 ]
then
    echo "Installing $APP ..."
    sudo yum install -y $APP
    echo "$APP installed successfully."

elif [ $OPTION -eq 2 ]
then
    echo "Removing $APP ..."
    sudo yum remove -y $APP
    echo "$APP removed successfully."

else
    echo "Invalid option selected."
fi

for SERVER in $(cat $SERVER_LIST)
do
    echo "Connecting to $SERVER" >>$LOG_FILE

    ssh -t root@$SERVER "sudo yum install -y $APP" >>$LOG_FILE

    echo "Installing Application/Package  on $SERVER" >>$LOG_FILE

    sudo yum install $App

    echo "Installing application or patch" >>$LOG_FILE

    sudo yum install -y $APP

    echo "Removing unused application or package" >>$LOG_FILE

done

