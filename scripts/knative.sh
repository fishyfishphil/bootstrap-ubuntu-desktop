#!/bin/bash

# Get latest version
VERSION=$(curl --silent "https://api.github.com/repos/knative/client/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')

# Download
curl -L "https://github.com/knative/client/releases/download/$VERSION/kn-linux-amd64" > kn

# Make executable
chmod +x kn

# Move to bin
mv kn /usr/local/bin
