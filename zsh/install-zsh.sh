#!/bin/bash

# Update package lists
sudo apt update -y

# Install Zsh and dependencies
sudo apt install zsh git-core curl -y

# Check Zsh version
zsh --version

echo "Zsh installed successfully!"
