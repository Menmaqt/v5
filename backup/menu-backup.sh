clear
red='\033[0;31m'
green='\033[1;32m'
yellow='\033[0;33m'
plain='\033[0m'
blue='\033[0;34m'
ungu='\033[1;35m'
Green="\033[32m"
Red="\033[31m"
WhiteB="\e[5;37m"
BlueCyan="\e[5;36m"
Green_background="\033[42;37m"
Red_background="\033[41;37m"
Suffix="\033[0m"


echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100m                        • BACKUP MENU •                        \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e "     (\e[36m01\e[0m) Backup"
echo -e "     (\e[36m02\e[0m) Restore"
echo -e "     (\e[36m03\e[0m) strt"
echo -e "     (\e[36m04\e[0m) limit speed"
echo -e "     (\e[36m05\e[0m) autobackup"
echo -e ""
echo -e "     (\e[31m0\e[0m) \e[31mBACK TO MENU\033[0m"
echo -e ""
echo -e "     Press x or [ Ctrl+C ] • To-Exit"
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select menu : " bro

if [ $bro = 1 ] || [ $bro = 1 ]
then
figlet "backup"
backup
echo "--------------------------------------------------------"
echo
echo "Terimakasih sudah menggunakan layanan Premium ZXMENMA"
echo
echo "--------------------------------------------------------"
fi

if [ $bro = 2 ] || [ $bro = 2 ]
then
figlet "Restore"
restore
echo "--------------------------------------------------------"
echo
echo "Terimakasih sudah menggunakan layanan Premium ZXMENMA"
echo
echo "--------------------------------------------------------"
fi
if [ $bro = 3 ] || [ $bro = 3 ]
then
figlet "strt"
strt
echo "--------------------------------------------------------"
echo
echo "Terimakasih sudah menggunakan layanan Premium ZXMENMA"
echo
echo "--------------------------------------------------------"
fi
if [ $bro = 4 ] || [ $bro = 4 ]
then
limitspeed
echo "--------------------------------------------------------"
echo
echo "Terimakasih sudah menggunakan layanan Premium ZXMENMA"
echo
echo "--------------------------------------------------------"
fi
if [ $bro = 5 ] || [ $bro = 5 ]
then
autobackup
echo "--------------------------------------------------------"
echo
echo "Terimakasih sudah menggunakan layanan Premium ZXMENMA"
echo
echo "--------------------------------------------------------"
fi
if [ $bro = 0 ] || [ $bro = 0 ]
then
menu
fi
if [ $bro = x ] || [ $bro = x ]
then
exit
fi