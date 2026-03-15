#!/bin/bash

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
