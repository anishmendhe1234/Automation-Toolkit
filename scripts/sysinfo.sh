#!/bin/bash
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m'
echo -e "\n${CYAN}=== System Information ===${NC}"
echo -e "${YELLOW}Operating System:${NC} $(grep PRETTY_NAME /etc/os-release | cut -d '"' -f 2)"
echo -e "${YELLOW}Kernel Version:${NC} $(uname -r)"
echo -e "${YELLOW}Uptime:${NC} $(uptime -p)"
echo -e "${YELLOW}CPU Architecture:${NC} $(lscpu | awk '/^Architecture:/ {print $2}')\n"
