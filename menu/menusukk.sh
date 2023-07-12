#!/bin/bash
BURIQ () {
    curl -sS https://raw.githubusercontent.com/Menmaqt/permission/main/ipmini > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/Menmaqt/permission/main/ipmini | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/Menmaqt/permission/main/ipmini | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION

if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/Menmaqt/permission/main/ipmini | grep $MYIP | awk '{print $3}')
fi

# =========================================
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"

trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let tra=$trx/2
ssx=$(grep -c -E "^## " "/etc/xray/config.json")
let ssa=$ssx/2

# // Exporting Language to UTF-8
Black='\033[0;30m'
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'
#Download/Upload today
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"
clear

# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))

# // Exporting Language to UTF-8

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'


# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

# // Clear
clear
clear && clear && clear
clear;clear;clear
cek=$(service ssh status | grep active | cut -d ' ' -f5)
if [ "$cek" = "active" ]; then
stat=-f5
else
stat=-f7
fi
ssh=$(service ssh status | grep active | cut -d ' ' $stat)
if [ "$ssh" = "active" ]; then
ressh="${green}ON${NC}"
else
ressh="${red}OFF${NC}"
fi
sshstunel=$(service stunnel4 status | grep active | cut -d ' ' $stat)
if [ "$sshstunel" = "active" ]; then
resst="${green}ON${NC}"
else
resst="${red}OFF${NC}"
fi
sshws=$(service ws-stunnel status | grep active | cut -d ' ' $stat)
if [ "$sshws" = "active" ]; then
ressshws="${green}ON${NC}"
else
ressshws="${red}OFF${NC}"
fi
ngx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ngx" = "active" ]; then
resngx="${green}ON${NC}"
else
resngx="${red}OFF${NC}"
fi
dbr=$(service dropbear status | grep active | cut -d ' ' $stat)
if [ "$dbr" = "active" ]; then
resdbr="${green}ON${NC}"
else
resdbr="${red}OFF${NC}"
fi
v2r=$(service xray status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${green}ON${NC}"
else
resv2r="${red}OFF${NC}"
fi
function addhost(){
clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -rp "Domain/Host: " -e host
echo ""
if [ -z $host ]; then
echo "????"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
setting-menu
else
echo "IP=$host" > /var/lib/scrz-prem/ipvps.conf
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo "Dont forget to renew cert"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi
}
function genssl(){
clear
systemctl stop nginx
domain=$(cat /var/lib/scrz-prem/ipvps.conf | cut -d'=' -f2)
Cek=$(lsof -i:80 | cut -d' ' -f1 | awk 'NR==2 {print $1}')
if [[ ! -z "$Cek" ]]; then
sleep 1
echo -e "[ ${red}WARNING${NC} ] Detected port 80 used by $Cek " 
systemctl stop $Cek
sleep 2
echo -e "[ ${green}INFO${NC} ] Processing to stop $Cek " 
sleep 1
fi
echo -e "[ ${green}INFO${NC} ] Starting renew cert... " 
sleep 2
/root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key --ecc
echo -e "[ ${green}INFO${NC} ] Renew cert done... " 
sleep 2
echo -e "[ ${green}INFO${NC} ] Starting service $Cek " 
sleep 2
echo $domain > /etc/xray/domain
systemctl restart xray
systemctl restart nginx
echo -e "[ ${green}INFO${NC} ] All finished... " 
sleep 0.5
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
}
IPVPS=$(curl -s ipinfo.io/ip )
clear
echo -e "${BIYellow}╒═════════════════════════════════════════════════════╕${NC}" 
echo -e " \E[0;107m                  ${BIBlack}VPS INFORMATION                    \e[0m"
echo -e "${BIYellow}╘═════════════════════════════════════════════════════╛${NC}"
echo -e "${ICyan} Server Uptime    \e[0m: $( uptime -p  | cut -d " " -f 2-10000 )"
echo -e "${ICyan} Current Time     \e[0m: $( date -d "0 days" +"%d-%m-%Y | %X" )"
echo -e "${ICyan} Operating System \e[0m: $( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g' ) ( $( uname -m) )"
echo -e "${ICyan} IP-VPS${NC}           : ${IYellow}$IPVPS${NC}"
echo -e "${ICyan} Current Domain   \e[0m: ${IYellow}$( cat /etc/xray/domain )${NC}"
echo -e "${ICyan} NS Domain        \e[0m: ${IYellow}$(cat /root/nsdomain)${NC}"
echo -e "${ICyan} Total Ram        \e[0m: ${totalram}MB"
echo -e "${ICyan} CPU Usage        \e[0m: $cpu_usage"
echo -e "${ICyan} Time Reboot      \e[0m: 00:00 ${IYellow}( Jam 12 Malam )${NC}"
echo -e "${ICyan} AutoScript By    \e[0m: ${IYellow}Menma${NC}" 
echo -e "${BIYellow}╒═════════════════════════════════════════════════════╕${NC}"
echo -e " \E[0;107m                 ${BIBlack}BANDWIDTH MONITORING                $NC"
echo -e "${BIYellow}╘═════════════════════════════════════════════════════╛${NC}"
echo -e "  ${ICyan}Daily$NC     = ${red}$ttoday$NC"
echo -e "  ${ICyan}Yesterday$NC = ${red}$tyest$NC "
echo -e "  ${ICyan}Monthly$NC   = ${red}$tmon$NC $NC"
echo -e "${BIYellow}╘═════════════════════════════════════════════════════╛${NC}"
echo -e "${BIRed}  TERIMA KASIH SUDI MENGGUNAKAN AUTOSCRIPT BY ZXMENMA "
echo -e "${BIYellow}╒═════════════════════════════════════════════════════╕${NC}" 
echo -e "        ${BIYellow}SSH      VMESS       VLESS      TROJAN $NC" 
echo -e "       \033[0m ${Blue} $ssh1         $vma           $vla           $tra $NC" 
echo -e "${BIYellow}╘═════════════════════════════════════════════════════╛${NC}" 
echo -e "${BICyan}    SSH ${NC}: $ressh"" ${BICyan} NGINX ${NC}: $resngx"" ${BICyan}  XRAY ${NC}: $resv2r"" ${BICyan} TROJAN ${NC}: $resv2r"
echo -e "${BICyan}      STUNNEL ${NC}: $resst" "${BICyan} DROPBEAR ${NC}: $resdbr" "${BICyan} SSH-WS ${NC}: $ressshws"
echo -e "${BIYellow}╒═════════════════════════════════════════════════════╕${NC}" 
echo -e " \E[0;107m                        ${BIBlack}MENU                         \e[0m"
echo -e "${BIYellow}╘═════════════════════════════════════════════════════╛${NC}"
echo -e " (${ICyan}01\e[0m) ${IWhite}Menu SSH & OVPN$NC       (${ICyan}06\e[0m) ${IWhite}Change NS Domain$NC"
echo -e " (${ICyan}02\e[0m) ${IWhite}Menu Vmess$NC            (${ICyan}07\e[0m) ${IWhite}Clear Cache$NC"
echo -e " (${ICyan}03\e[0m) ${IWhite}Menu Vless$NC            (${ICyan}08\e[0m) ${IWhite}Running System$NC"
echo -e " (${ICyan}04\e[0m) ${IWhite}Menu Trojan$NC           (${ICyan}09\e[0m) ${IWhite}Backup$NC"
echo -e " (${ICyan}05\e[0m) ${IWhite}Menu Trial$NC            (${ICyan}10\e[0m) ${IWhite}Setting$NC"
echo -e ""
echo -e " (\e[1;31mx\e[0m) ${IWhite}Exit Script$NC"
echo -e "${BIYellow}╒═════════════════════════════════════════════════════╕${NC}"
echo -e "  ${ICyan}Version\e[0m : ${IWhite}2.0 ${NC}"
echo -e "  ${ICyan}User\e[0m    : ${IWhite}$Name ${NC}"
echo -e "  ${ICyan}Expired\e[0m : ${IWhite}$Exp ${NC}"
echo -e "${BIYellow}╘═════════════════════════════════════════════════════╛${NC}" 
echo -e   ""
read -p " Select menu : " opt
echo -e ""
case $opt in
01 | 1) clear ; menu-sshh ;;
02 | 2) clear ; menu-vmess ;;
03 | 3) clear ; menu-vless ;;
04 | 4) clear ; menu-trojan ;;
05 | 5) clear ; menu-trial ;;
06 | 6) clear ; slow ;;
07 | 7) clear ; clearcache ;;
08 | 8) clear ; running ;;
09 | 9) clear ; menu-backup ;;
10) clear ; menu-set ;;
6969) clear ;  wget https://raw.githubusercontent.com/Menmaqt/v5/main/up.sh && chmod +x up.sh && ./up.sh  ;;
0) clear ; menu ;;
x) exit ;;
*) echo -e "" ; echo "Press any key to back exit" ; sleep 1 ; exit ;;
esac
