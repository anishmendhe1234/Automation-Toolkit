#!/bin/bash
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m' 
echo -e "\n${CYAN}=== Network Information ===${NC}"
echo -e "${YELLOW}Hostname:${NC} $(hostname)"
echo -e "${YELLOW}Local IP Address:${NC} $(hostname -I | awk '{print $1}')"
echo -e "${YELLOW}Public IP Address:${NC} $(curl -s --max-time 3 ifconfig.me || echo 'Offline')"
echo -e "${YELLOW}Default Gateway:${NC} $(ip route | grep default | awk '{print $3}')\n"
