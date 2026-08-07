#!/bin/bash
CYAN='\033[0;36m'
GREEN='\033[0;32m'
NC='\033[0m' 
echo -e "\n${CYAN}=== Disk & Partition Layout ===${NC}"
echo -e "${GREEN}--- Block Devices ---${NC}"
lsblk -o NAME,SIZE,TYPE,MOUNTPOINT
echo -e "\n${GREEN}--- Disk Usage ---${NC}"
df -h | grep -E '^/dev/'
echo ""
