#!/bin/bash
CYAN='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' 
echo -e "\n${CYAN}=== Delete User ===${NC}"
if [ "$EUID" -ne 0 ]; then echo -e "${RED}Error: Run with sudo.${NC}"; exit 1; fi
read -p "Enter username to delete: " del_user
if [[ "$del_user" == "root" || "$del_user" == "$SUDO_USER" || "$del_user" == "$USER" ]]; then
     echo -e "${RED}Error: Cannot delete root or active admin.${NC}"; exit 1
fi
if id "$del_user" &>/dev/null; then
    userdel -r "$del_user"
    echo -e "${GREEN}User '$del_user' deleted.${NC}"
else
    echo -e "${RED}Error: User does not exist.${NC}"
fi
