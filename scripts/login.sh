#!/bin/bash
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m' 
echo -e "\n${CYAN}=== Active & Recent Logins ===${NC}"
echo -e "${YELLOW}Currently Logged In:${NC}"
who
echo -e "\n${YELLOW}Last 5 Logins:${NC}"
last -n 5
echo ""
