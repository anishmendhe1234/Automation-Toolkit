#!/bin/bash
CYAN='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' 
echo -e "\n${CYAN}=== Quick Directory Backup ===${NC}"
read -p "Enter full path of directory to backup: " target_dir
if [ -d "$target_dir" ]; then
    backup_file="$HOME/backup_$(date +%Y%m%d_%H%M%S).tar.gz"
    echo -e "${YELLOW}Creating backup...${NC}"
    tar -czf "$backup_file" "$target_dir" 2>/dev/null
    echo -e "${GREEN}Success! Saved to: $backup_file${NC}"
else
    echo -e "${RED}Error: Directory does not exist.${NC}"
fi
echo ""
