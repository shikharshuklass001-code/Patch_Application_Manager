#!/bin/bash

echo "Linux Package Management Script"

echo "Enter action (install/remove):"
read ACTION

echo "Enter package name:"
read PACKAGE

if [ "$ACTION" == "install" ]
then
    echo "Installing $PACKAGE ..."
    sudo yum install -y $PACKAGE
    echo "$PACKAGE installed successfully"

elif [ "$ACTION" == "remove" ]
then
    echo "Removing $PACKAGE ..."
    sudo yum remove -y $PACKAGE
    echo "$PACKAGE removed successfully"

else
    echo "Invalid option"
fi

