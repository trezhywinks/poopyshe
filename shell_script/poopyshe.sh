#!/bin/bash

RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')" CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"  
RESETBG="$(printf '\e[0m\n')"

 printf "\e[1;92m"
echo -e "${WHITE}"
CREATE(){
bash create_script.sh  > /dev/null/ 2>&1 &
}

LOADING_SHELL(){
CREATE
printf "\e[1;92m"
clear
echo -e "[${RED} poopyshe ${WHITE}] ${WHITE}script Shell"
echo -e "[${RED} poopyshe ${WHITE}] ${BLACK}loading."
sleep 0.75
clear
echo -e "[${RED} poopyshe ${WHITE}]${WHITE} script Shell"
echo -e "[${RED} poopyshe ${WHITE}]${BLACK} loading.."
sleep 0.75
clear
echo -e "[${RED} poopyshe ${WHITE}]${WHITE} script Shell"
echo -e "[${RED} poopyshe ${WHITE}]${BLACK} loading...${WHITE}"
sleep 0.75
clear
BANNER_POOPY
}

BANNER_POOPY(){
cat << EOF
welcome to poopyshe
try poopyshe --help to see the commands

${RED} ██▓███  ▒█████  ▒█████  ██▓███▓██   ██▓ ██████ ██░ ██▓█████ 
${RED}▓██░  ██▒██▒  ██▒██▒  ██▓██░  ██▒██  ██▒██    ▒▓██░ ██▓█   ▀ 
${RED}▓██░ ██▓▒██░  ██▒██░  ██▓██░ ██▓▒▒██ ██░ ▓██▄  ▒██▀▀██▒███   
${RED}▒██▄█▓▒ ▒██   ██▒██   ██▒██▄█▓▒ ▒░ ▐██▓░ ▒   ██░▓█ ░██▒▓█  ▄ 
${RED}▒██▒ ░  ░ ████▓▒░ ████▓▒▒██▒ ░  ░░ ██▒▓▒██████▒░▓█▒░██░▒████▒
${RED}▒▓▒░ ░  ░ ▒░▒░▒░░ ▒░▒░▒░▒▓▒░ ░  ░ ██▒▒▒▒ ▒▓▒ ▒ ░▒ ░░▒░░░ ▒░ ░
${RED}░▒ ░      ░ ▒ ▒░  ░ ▒ ▒░░▒ ░    ▓██ ░▒░░ ░▒  ░ ░▒ ░▒░ ░░ ░  ░
${RED}░░      ░ ░ ░ ▒ ░ ░ ░ ▒ ░░      ▒ ▒ ░░ ░  ░  ░  ░  ░░ ░  ░   
${RED}            ░ ░     ░ ░         ░ ░          ░  ░  ░  ░  ░  ░
${RED}                                ░ ░                          
EOF
 echo -e "\n${WHITE} Program created for you"

timeout 3s curl -fIs "https://web.whatsapp.com" > /dev/null
if [[ $? -eq 0 ]]; then
echo -e "${WHITE} Checking status => Program ${GREEN}on-line"
else
echo -e "${WHITE} Checking status => Program ${RED}off-line"
fi
}

LOADING_SHELL
