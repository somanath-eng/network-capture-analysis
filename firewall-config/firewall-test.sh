#!/bin/bash
# Firewall Testing Script

echo "=== Testing Firewall Rules ==="

echo "1. Checking UFW status..."
sudo ufw status numbered

echo "2. Testing SSH port (should be open)..."
sudo nmap -p 22 localhost

echo "3. Testing blocked port (should be filtered)..."
sudo nmap -p 9999 localhost

echo "4. Checking firewall logs..."
sudo tail -n 10 /var/log/ufw.log 2>/dev/null || echo "Logs not available"

echo "=== Testing Complete ==="
