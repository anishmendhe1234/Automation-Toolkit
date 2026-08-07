#!/bin/bash
CYAN='\033[0;36m'
GREEN='\033[0;32m'
NC='\033[0m' 
echo -e "\n${CYAN}=== System Diagnostics ===${NC}"
echo -e "\n${GREEN}--- Memory Usage ---${NC}"
free -h
echo -e "\n${GREEN}--- Top 5 CPU-Consuming Processes ---${NC}"
ps aux --sort=-%cpu | head -n 6
echo ""
