#!/bin/bash

##SCRIPTS A INSTALAR

##@SWITTECNOLOGIA

APACHE2MENU () {
    clear
		echo -e "\033[1;36mTROCANDO PORTA 80 PARA 81 \033[0m"
		sleep 2s
		sed -i "s;80;81;g" /etc/apache2/ports.conf > /dev/null 2>&1
		systemctl restart apache2 > /dev/null 2>&1
}

while true $x != "ok"
do
stspb=$(ps x | grep "pweb" /bin/apachemenu|grep -v grep > /dev/null && echo -e "\033[1;32m(ATIVADO ◉) " || echo -e "\033[1;31m(DESATIVADO) ")
clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[47;1;36m                  ✦ MENU APACHE ✦ $stspb                 \E[0m"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\033[1;31m  [\033[1;36m 01 \033[1;31m] \033[1;37m• \033[1;33mUSAR PORTA 81
\033[1;31m  [\033[1;36m 00 \033[1;31m] \033[1;37m• \033[1;33mSAIR"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo -ne "\033[1;32m O QUE DESEJA FAZER \033[1;33m?\033[1;31m?\033[1;37m : "; read x

case "$x" in 
   1 | 01)
   clear
   APACHE2MENU
   exit;
   ;;
   0 | 00)
   clear
   MENU
   exit;
   ;;
   *)
   echo -e "\n\033[1;31mOpcao invalida !\033[0m"
   sleep 2
esac
done
}
#fim