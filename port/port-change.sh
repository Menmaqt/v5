#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"

clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100m                         • PORT MENU •                         \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e "     (\e[36m01\e[0m) Change Port Stunnel4"
echo -e "     (\e[36m01\e[0m) Change Port OpenVPN"
echo -e "     (\e[36m01\e[0m) Change Port Trojan"
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
1) clear ; port-ssl ; exit ;;
2) clear ; port-ovpn ; exit ;;
3) clear ; port-tr ; exit ;;
0) clear ; menu-set ; exit ;;
x) exit ;;
*) echo -e "" ; echo "Anda Salah tekan ." ; sleep 1 ; port-change ;;
esac
