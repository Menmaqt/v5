#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip)
green_background="\033[42;37m"
NC="\033[0m"
red_background="\033[41;37m"
wh="\e[1;37m" # PUTIH
cy="\e[1;36m" # CYAN
ye="\e[1;33m" # KUNING
clear 
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m                 • DOMAIN MENU •                               \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e "     (\e[36m01\e[0m) Change Domain"
echo -e "     (\e[36m02\e[0m) Renew Certificate Domain"
echo -e ""
echo -e "     (\e[31m0\e[0m) \e[31mBACK TO SETTING MENU\033[0m"
echo -e ""
echo -e "     Press x or [ Ctrl+C ] • To-Exit"
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; add-host ;;
2) clear ; certv2ray ;;
0) clear ; menu-set ;;
x) exit ;;
*) echo "Anda salah tekan" ; sleep 1 ; menu-domain ;;
esac
