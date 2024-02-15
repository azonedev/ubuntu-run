#!/bin/bash

# Function to check command success
check_command() {
    if [ $? -eq 0 ]; then
        echo "Command executed successfully."
    else
        echo "Error executing command. Continuing to the next task..."
    fi
}

# Function to prompt for yes/no
prompt_yes_no() {
    while true; do
        read -p "$1 (yes/no): " yn
        case $yn in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Please answer yes or no.";;
        esac
    done
}


# Update and upgrade the system
prompt_yes_no "Do you want to update and upgrade the system?"
if [ $? -eq 0 ]; then
    sudo apt update && sudo apt upgrade -y
    check_command
fi

# Browser: Chrome (profiles setup later)
if prompt_yes_no "Do you want to install Google Chrome?"; then
    if ! command -v google-chrome &> /dev/null; then
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        sudo dpkg -i google-chrome-stable_current_amd64.deb
        sudo apt -f install
        check_command
    else
        echo "Google Chrome is already installed. Skipping..."
    fi
fi


# Update snap
if prompt_yes_no "Do you want to update snap?"; then
    sudo apt update
    sudo apt install snapd
    check_command
fi

# Code editors
if prompt_yes_no "Do you want to install code editors (VS Code, PhpStorm with jetbrains mono front, dbgate)?"; then
    sudo snap install code --classic
    sudo snap install phpstorm --classic
    sudo snap install dbgate
    sudo apt install fonts-jetbrains-mono
    check_command
fi

# Other tools
if prompt_yes_no "Do you want to install other tools (curl, git, jq, postman, PHP)?"; then
    sudo apt install curl git jq -y
    sudo snap install postman 
    sudo apt install php8.1-cli php8.1-curl php8.1-gd php8.1-mbstring php8.1-xml -y
    check_command
fi

# Install composer 
if prompt_yes_no "Do you want to install Composer?"; then
    if ! command -v composer &> /dev/null; then
        curl -sS https://getcomposer.org/installer | php
        sudo mv composer.phar /usr/local/bin/composer
        composer --version
        check_command
    else
        echo "Composer is already installed. Skipping..."
    fi
fi

# Install Go
if prompt_yes_no "Do you want to install Go?"; then
    wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz
    rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz
    export PATH=$PATH:/usr/local/go/bin
    check_command
fi

# Download Apployee
if prompt_yes_no "Do you want to download Apployee?"; then
    wget https://cdn.apploye.com/apploye-desktop-app/linux/x64/Apploye-3.1.12.AppImage -O apploye.appimage
    sudo add-apt-repository universe
	sudo apt install libfuse2
	
	if [ -e apploye.appimage ]; then
		chmod +x apploye.appimage
	fi
    check_command
fi

# Run Apployee
if prompt_yes_no "Do you want to run Apployee?"; then
    ./apploye.appimage
    check_command
fi

# vlc player
if prompt_yes_no "Do you want to vlc player?"; then
    sudo snap install vlc
    check_command
fi

# TODO: Add scripts  hrere ...


# Don't add new scripts below this

# Docker and docker-compose
if prompt_yes_no "Do you want to install Docker and docker-compose?"; then
    sudo apt install docker.io docker-compose -y
    sudo usermod -aG docker $USER
    echo "Please log out and log back in to apply group changes."
    check_command
fi

echo "Software installation complete! Please reboot your system for some changes to take effect."

