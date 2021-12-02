#!/bin/bash

# Set repo, file and executable names
REPO="knative-sandbox/kn-plugin-quickstart"
FILE="kn-quickstart-linux-amd64"
BIN="kn-quickstart"

# Get latest version
VERSION=$(curl --silent "https://api.github.com/repos/$REPO/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')

# Download
curl -L "https://github.com/$REPO/releases/download/$VERSION/$FILE" > $BIN

# Make executable
chmod +x $BIN

# Move to bin
mv $BIN /usr/local/bin
