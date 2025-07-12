#!/bin/bash

#DIR=$(mktemp)
#echo "Using working dir: $DIR"

# Make sure wget is installed
if ! command -v wget >/dev/null 2>&1; then
    echo "ERROR: Please install dependency: wget"
    exit 1
fi

# Run as root only
if [ "$(id -u)" -ne 0 ]; then
    echo "ERROR: Please run as root."
    exit 1
fi

wget https://pki.joris.me/certs/jorispki-2025-root.crt /usr/local/share/ca-certificates/
update-ca-certificates
