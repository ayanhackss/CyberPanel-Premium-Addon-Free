#!/bin/bash

# ============================================================================
# CyberPanel License Bypass Script
# Developer: Ayan Ansari
# Description: Bypass CyberPanel license verification and unlock all features
# 
# ⚠️  WARNING: EDUCATIONAL PURPOSES ONLY ⚠️
# This script is created STRICTLY FOR EDUCATIONAL AND RESEARCH PURPOSES ONLY.
# DO NOT use this in production or commercial environments.
# The developer is NOT responsible for any misuse or consequences.
# Always support developers by purchasing legitimate licenses.
# ============================================================================

# Color definitions for beautiful output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
BOLD='\033[1m'
RESET='\033[0m'

# Clear screen for clean presentation
clear

# Display beautiful ASCII art banner
echo -e "${CYAN}${BOLD}"
cat << "EOF"
╔═══════════════════════════════════════════════════════════════════╗
║                                                                   ║
║   ██████╗██╗   ██╗██████╗ ███████╗██████╗ ██████╗  █████╗ ███╗   ██╗███████╗██╗     ║
║  ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗████╗  ██║██╔════╝██║     ║
║  ██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝██████╔╝███████║██╔██╗ ██║█████╗  ██║     ║
║  ██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗██╔═══╝ ██╔══██║██║╚██╗██║██╔══╝  ██║     ║
║  ╚██████╗   ██║   ██████╔╝███████╗██║  ██║██║     ██║  ██║██║ ╚████║███████╗███████╗║
║   ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝╚══════╝║
║                                                                   ║
║                    LICENSE BYPASS TOOL v1.0                       ║
║                                                                   ║
╚═══════════════════════════════════════════════════════════════════╝
EOF
echo -e "${RESET}"

echo -e "${RED}${BOLD}╔═══════════════════════════════════════════════════════════════════╗${RESET}"
echo -e "${RED}${BOLD}║${RESET}  ${WHITE}⚠️  WARNING: EDUCATIONAL PURPOSES ONLY ⚠️${RESET}                      ${RED}${BOLD}║${RESET}"
echo -e "${RED}${BOLD}╚═══════════════════════════════════════════════════════════════════╝${RESET}"
echo ""
echo -e "${YELLOW}This tool is for ${RED}${BOLD}EDUCATIONAL AND RESEARCH PURPOSES ONLY${RESET}${YELLOW}.${RESET}"
echo -e "${YELLOW}Do NOT use in production. Always purchase legitimate licenses.${RESET}"
echo -e "${YELLOW}Developer is NOT responsible for any misuse or consequences.${RESET}"
echo ""
echo -e "${MAGENTA}${BOLD}╔═══════════════════════════════════════════════════════════════════╗${RESET}"
echo -e "${MAGENTA}${BOLD}║${RESET}  ${WHITE}Developer:${RESET} ${GREEN}Ayan Ansari${RESET}                                           ${MAGENTA}${BOLD}║${RESET}"
echo -e "${MAGENTA}${BOLD}║${RESET}  ${WHITE}Purpose:${RESET} ${YELLOW}Unlock all CyberPanel premium features${RESET}                ${MAGENTA}${BOLD}║${RESET}"
echo -e "${MAGENTA}${BOLD}╚═══════════════════════════════════════════════════════════════════╝${RESET}"
echo ""

# Progress indicator function
show_progress() {
    echo -ne "${CYAN}[${RESET}"
    for i in {1..50}; do
        echo -ne "${GREEN}█${RESET}"
        sleep 0.02
    done
    echo -e "${CYAN}]${RESET} ${GREEN}✓${RESET}"
}

# Step 1: Navigate to CyberPanel directory
echo -e "${YELLOW}${BOLD}[STEP 1/3]${RESET} ${WHITE}Navigating to CyberPanel directory...${RESET}"
cd /usr/local/CyberCP
show_progress
echo ""

# Step 2: Apply bypass modifications
echo -e "${YELLOW}${BOLD}[STEP 2/3]${RESET} ${WHITE}Applying license bypass modifications...${RESET}"
find . -type f -exec sed -i 's|https://platform.cyberpersons.com/CyberpanelAdOns/Adonpermission|https://cyberpanelbp.cangurohosting.com/CyberpanelAdOns/Adonpermission|g' {} +
show_progress
echo ""

# Step 3: Restart service
echo -e "${YELLOW}${BOLD}[STEP 3/3]${RESET} ${WHITE}Restarting lscpd service...${RESET}"
systemctl restart lscpd
show_progress
echo ""

# Success message
echo -e "${GREEN}${BOLD}"
cat << "EOF"
╔═══════════════════════════════════════════════════════════════════╗
║                                                                   ║
║                    ✓ SUCCESS! BYPASS APPLIED                      ║
║                                                                   ║
╚═══════════════════════════════════════════════════════════════════╝
EOF
echo -e "${RESET}"

echo -e "${GREEN}${BOLD}✓${RESET} ${WHITE}All CyberPanel verifications for Addon Permission have been bypassed.${RESET}"
echo -e "${GREEN}${BOLD}✓${RESET} ${WHITE}All features, including paid CyberPanel features, are now unlocked.${RESET}"
echo -e "${GREEN}${BOLD}✓${RESET} ${WHITE}Service 'lscpd' restarted successfully.${RESET}"
echo ""

echo -e "${CYAN}${BOLD}═══════════════════════════════════════════════════════════════════${RESET}"
echo -e "${GREEN}${BOLD}    Operation completed successfully! Enjoy your unlocked features!${RESET}"
echo -e "${CYAN}${BOLD}═══════════════════════════════════════════════════════════════════${RESET}"
echo ""

echo -e "${RED}${BOLD}╔═══════════════════════════════════════════════════════════════════╗${RESET}"
echo -e "${RED}${BOLD}║${RESET}  ${YELLOW}⚠️  REMINDER: This is for EDUCATIONAL PURPOSES ONLY ⚠️${RESET}          ${RED}${BOLD}║${RESET}"
echo -e "${RED}${BOLD}║${RESET}  ${WHITE}Please support developers by purchasing legitimate licenses.${RESET}  ${RED}${BOLD}║${RESET}"
echo -e "${RED}${BOLD}╚═══════════════════════════════════════════════════════════════════╝${RESET}"
echo ""
