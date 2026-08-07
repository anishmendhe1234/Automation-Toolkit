#!/bin/bash
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
NC='\033[0m'
echo -e "\n${BLUE}=========================================${NC}"
echo -e "${YELLOW}  Toolkit tasks finished. Goodbye! 👋  ${NC}"
echo -e "${BLUE}=========================================${NC}\n"
sleep 1
kill -9 $PPID
