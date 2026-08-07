#!/bin/bash
CYAN='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' 
echo -e "\n${CYAN}=== Create New User ===${NC}"
if [ "$EUID" -ne 0 ]; then echo -e "${RED}Error: Run with sudo.${NC}"; exit 1; fi
read -p "Enter new username: " new_user
if id "$new_user" &>/dev/null; then
    echo -e "${RED}Error: User '$new_user' already exists.${NC}"
else
    useradd -m -s /bin/bash "$new_user"
    echo -e "${GREEN}User '$new_user' created successfully.${NC}"
    read -p "Set a password? (y/n): " set_pass
    if [[ "$set_pass" =~ ^[Yy]$ ]]; then passwd "$new_user"; fi
fi
