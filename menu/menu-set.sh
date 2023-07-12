#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
clear 
        # background validation
        green_background="\033[42;37m"
        red_background="\033[41;37m"
        # color text 
        yelow="\e[1;33m"
        NC="\033[0m"
        cyan="\e[1;36m"
        white="\e[1;37m"
clear    
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m                  • SETTING MENU •         \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e "     (\e[36m01\e[0m) Change Domain"
echo -e "     (\e[36m02\e[0m) Change Port"
echo -e "     (\e[36m03\e[0m) Change Banner"
echo -e "     (\e[36m04\e[0m) Restart Service"
echo -e "     (\e[36m05\e[0m) Check Bandwith"
echo -e "     (\e[36m06\e[0m) Set Auto Reboot"
echo -e "     (\e[36m07\e[0m) Speedtest Vps"
echo -e "     (\e[36m08\e[0m) Webmin Menu"
echo -e "     (\e[36m09\e[0m) About The Script"
echo -e ""
echo -e "     (\e[31m0\e[0m) \e[31mBACK TO MENU\033[0m"
echo -e ""
echo -e "     Press x or [ Ctrl+C ] • To-Exit"
echo -e   ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; menu-domain ; exit ;;
2) clear ; port-change ; exit ;;
3) clear ; nano /etc/issue.net ; exit ;;  #ssh-vpn banner.conf
4) clear ; restarts ; exit ;;
5) clear ; bw ; exit ;;
6) clear ; auto-reboot ; exit ;;
7) clear ; speedtest ; exit ;;
8) clear ; menu-webmin ; exit ;; 
9) clear ; about ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo -e "" ; echo "Anda salah tekan" ; sleep 1 ; menu-set ;;
esac
