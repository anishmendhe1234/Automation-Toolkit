#!/bin/bash
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m'
# Look for the logfile in the parent directory
LOGFILE="$HOME/linux_toolkit/toolkit.log"

echo -e "\n${CYAN}=== Toolkit Execution Logs ===${NC}"
if [ -f "$LOGFILE" ]; then
    cat "$LOGFILE"
else
    echo -e "${YELLOW}No logs found yet. Try running a tool first!${NC}"
fi
echo ""
