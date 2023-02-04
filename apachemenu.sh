#!/bin/bash

##SCRIPTS A INSTALAR

##@SWITTECNOLOGIA

APACHE2MENU () {
    clear
	echo -e "\033[1;36mINTALANDO APACHE MENU \033[0m"
	sleep 2s
	bash <(wget -qO- https://github.com/JeanRocha91x/MenuApache/raw/main/apache2menu)
	echo -e "\033[1;36mINTALADO COM SUCESSO \033[0m"
	sleep 2s
    apache2menu
}

while true $x != "ok"
do
clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[47;1;36m                  ✦ MENU APACHE ✦                  \E[0m"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "
\033[1;31m  [\033[1;36m 05 \033[1;31m] \033[1;37m• \033[1;33mMENU APACHE
\033[1;31m  [\033[1;36m 00 \033[1;31m] \033[1;37m• \033[1;33mVOLTAR"
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