#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt-get update

# Install pip if not already installed
echo "Checking if pip is installed..."
if ! command -v pip &> /dev/null
then
    echo "pip not found, installing pip..."
    sudo apt-get install -y python3-pip
else
    echo "pip is already installed."
fi

# Install required Python packages
echo "Installing required Python packages..."
pip install streamlit
pip install phidata
pip install pypdf

echo "All dependencies are installed."
