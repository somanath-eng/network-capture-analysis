#!/bin/bash
# Firewall Configuration Script for UFW on Arch Linux

echo "=== UFW Firewall Setup ==="

# Enable UFW
echo "Enabling UFW firewall..."
sudo ufw enable

# Allow SSH
echo "Allowing SSH on port 22..."
sudo ufw allow 22

# Block Telnet (example)
echo "Blocking Telnet on port 23..."
sudo ufw deny 23

# Show status
echo "Current firewall status:"
sudo ufw status verbose

echo "=== Setup Complete ==="
