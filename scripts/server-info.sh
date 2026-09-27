#!/bin/bash

echo "=== DevOps Server ==="
echo "Hostname:"
hostname

echo "User:"
whoami

echo "IP addresses:"
hostname -I

echo "Disk usage:"
df -h /
