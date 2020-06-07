#!/bin/bash

function error {
    echo -e "\e[1m\e[31m[ERROR] >\e[0m $1"
    exit 1
}

if [[ $EUID -ne 0 ]]; then
    error "This script must be run as root."
fi

cp ./src/launch /usr/bin