#!/bin/bash
CYAN='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' 
echo -e "\n${CYAN}=== Service Status Checker ===${NC}"
read -p "Enter service name (e.g., ssh, cron): " service_name
if systemctl is-active --quiet "$service_name"; then
    echo -e "${GREEN}Service '$service_name' is RUNNING.${NC}"
else
    echo -e "${RED}Service '$service_name' is NOT running.${NC}"
fi
echo ""
