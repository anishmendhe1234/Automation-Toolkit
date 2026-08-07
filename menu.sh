#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m'

# Log File Location
LOGFILE="$HOME/linux_toolkit/toolkit.log"

while true; do
    clear
    echo -e "${CYAN}====================================================${NC}"
    echo -e "${CYAN}|${NC}${YELLOW}             LINUX AUTOMATION TOOLKIT             ${NC}${CYAN}|${NC}"
    echo -e "${CYAN}====================================================${NC}"
    echo -e "${CYAN}|${NC}  ${GREEN}[1]${NC} System Information                          ${CYAN}|${NC}"
    echo -e "${CYAN}|${NC}  ${GREEN}[2]${NC} Network Information                         ${CYAN}|${NC}"
    echo -e "${CYAN}|${NC}  ${GREEN}[3]${NC} System Diagnostics                          ${CYAN}|${NC}"
    echo -e "${CYAN}|${NC}  ${GREEN}[4]${NC} Create a New User                           ${CYAN}|${NC}"
    echo -e "${CYAN}|${NC}  ${GREEN}[5]${NC} Delete an Existing User                     ${CYAN}|${NC}"
    echo -e "${CYAN}|${NC}  ${GREEN}[6]${NC} Active & Recent Logins                      ${CYAN}|${NC}"
    echo -e "${CYAN}|${NC}  ${GREEN}[7]${NC} Disk & Partition Info                       ${CYAN}|${NC}"
    echo -e "${CYAN}|${NC}  ${GREEN}[8]${NC} Service Status Checker                      ${CYAN}|${NC}"
    echo -e "${CYAN}|${NC}  ${GREEN}[9]${NC} Quick Folder Backup                         ${CYAN}|${NC}"
    echo -e "${CYAN}|${NC} ${GREEN}[10]${NC} View Toolkit Logs                           ${CYAN}|${NC}"
    echo -e "${CYAN}|${NC}                                                  ${CYAN}|${NC}"
    echo -e "${CYAN}|${NC}                 ${MAGENTA}[E] Exit Toolkit${NC}                 ${CYAN}|${NC}"
    echo -e "${CYAN}====================================================${NC}"
    # Prompt now asks for 1-10 or E
    read -p "Select an option [1-10] or [E] to exit: " choice

    # Get the current timestamp for the log
    TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

    case $choice in
        1) echo "[$TIMESTAMP] Executed: System Information" >> "$LOGFILE"; ./scripts/sysinfo.sh ;;
        2) echo "[$TIMESTAMP] Executed: Network Information" >> "$LOGFILE"; ./scripts/netinfo.sh ;;
        3) echo "[$TIMESTAMP] Executed: System Diagnostics" >> "$LOGFILE"; ./scripts/sysdiag.sh ;;
        4) echo "[$TIMESTAMP] Executed: Create a New User" >> "$LOGFILE"; ./scripts/user.sh ;;
        5) echo "[$TIMESTAMP] Executed: Delete an Existing User" >> "$LOGFILE"; ./scripts/delete.sh ;;
        6) echo "[$TIMESTAMP] Executed: Active & Recent Logins" >> "$LOGFILE"; ./scripts/login.sh ;;
        7) echo "[$TIMESTAMP] Executed: Disk & Partition Info" >> "$LOGFILE"; ./scripts/disk.sh ;;
        8) echo "[$TIMESTAMP] Executed: Service Status Checker" >> "$LOGFILE"; ./scripts/service.sh ;;
        9) echo "[$TIMESTAMP] Executed: Quick Folder Backup" >> "$LOGFILE"; ./scripts/backup.sh ;;
        10) echo "[$TIMESTAMP] Executed: View Logs" >> "$LOGFILE"; ./scripts/logs.sh ;;
        # Handle both uppercase 'E' and lowercase 'e'
        E|e) echo "[$TIMESTAMP] Toolkit Closed" >> "$LOGFILE"; source ./scripts/exit.sh ;;
        *) echo -e "${RED}Invalid option. Please try again.${NC}" ;;
    esac
    
    # Only pause if the user didn't choose E/e
    if [[ ! "$choice" =~ ^[Ee]$ ]]; then
        echo -e "\n${BLUE}----------------------------------------------------${NC}"
        read -p "Press [Enter] to return to the menu..."
    fi
done
