#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
aureb=$(cat /home/re_otm)
clear
echo " "
echo "===================================================================="  | tee -a log-install.txt
echo "      ___          ___          ___          ___          ___       "  | tee -a log-install.txt   
echo "     /__/\        /  /\        /__/\        /__/\        /  /\      "  | tee -a log-install.txt
echo "    |  |::\      /  /:/_       \  \:\      |  |::\      /  /::\     "  | tee -a log-install.txt
echo "    |  |:|:\    /  /:/ /\       \  \:\     |  |:|:\    /  /:/\:\    "  | tee -a log-install.txt
echo "  __|__|:|\:\  /  /:/ /:/_  _____\__\:\  __|__|:|\:\  /  /:/~/::\   "  | tee -a log-install.txt
echo " /__/::::| \:\/__/:/ /:/ /\/__/::::::::\/__/::::| \:\/__/:/ /:/\:\  "  | tee -a log-install.txt
echo " \  \:\~~\__\/\  \:\/:/ /:/\  \:\~~\~~\/\  \:\~~\__\/\  \:\/:/__\/  "  | tee -a log-install.txt
echo "  \  \:\       \  \::/ /:/  \  \:\  ~~~  \  \:\       \  \::/       "  | tee -a log-install.txt
echo "   \  \:\       \  \:\/:/    \  \:\       \  \:\       \  \:\       "  | tee -a log-install.txt
echo "    \  \:\       \  \::/      \  \:\       \  \:\       \  \:\      "  | tee -a log-install.txt 
echo "     \__\/        \__\/        \__\/        \__\/        \__\/      "  | tee -a log-install.txt                               
echo "===================================================================="  | tee -a log-install.txt
echo ""
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH		: 22"  | tee -a log-install.txt
echo "   - SSH Websocket	: 80 [ON]" | tee -a log-install.txt
echo "   - SSH SSL Websocket	: 443" | tee -a log-install.txt
echo "   - Stunnel4		: 447, 777" | tee -a log-install.txt
echo "   - Dropbear		: 109, 143" | tee -a log-install.txt
echo "   - Badvpn		: 7100-7900" | tee -a log-install.txt
echo "   - Nginx		: 81" | tee -a log-install.txt
echo "   - Vmess TLS		: 443" | tee -a log-install.txt
echo "   - Vmess None TLS	: 80" | tee -a log-install.txt
echo "   - Vless TLS		: 443" | tee -a log-install.txt
echo "   - Vless None TLS	: 80" | tee -a log-install.txt
echo "   - Trojan GRPC        : 443" | tee -a log-install.txt
echo "   - Trojan WS		: 443" | tee -a log-install.txt
echo "   - SlowDNS		: 443,80,8080,53,5300" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone		: Asia/Kuala_Lumpur (GMT +8)"  | tee -a log-install.txt
echo "   - Fail2Ban		: [ON]"  | tee -a log-install.txt
echo "   - Dflate		: [ON]"  | tee -a log-install.txt
echo "   - IPtables		: [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot	: [ON]"  | tee -a log-install.txt
echo "   - IPv6		: [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On	: $aureb:00 $gg GMT +8" | tee -a log-install.txt
echo "   - AutoKill Multi Login User" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Fully automatic script" | tee -a log-install.txt
echo "   - VPS settings" | tee -a log-install.txt
echo "   - Admin Control" | tee -a log-install.txt
echo "   - Change port" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo ""
echo "==============================Contact===============================" | tee -a log-install.txt
echo "---------------------------t.me/ZxMenma-----------------------------" | tee -a log-install.txt
echo "====================================================================" | tee -a log-install.txt
echo -e ""
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu-set



