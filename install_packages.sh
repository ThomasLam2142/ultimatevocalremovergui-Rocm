#!/bin/bash

# Install tkinter system package
echo "Installing python3-tk..."
sudo apt install -y python3-tk

# Install Python packages from requirements.txt
echo "Installing packages from requirements.txt..."
while read package; do
    pip install "$package"
done < requirements.txt
