#!/bin/bash

# Author: Vtrois <seaton@vtrois.com>
# Project URL: https://www.vtrois.com
# Description: Backup for SpacePack Tools
# Github URL: https://github.com/Vtrois/SpacePack

export PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin
clear
printf "
===========================================================================
                                  Backup
      SpacePack tools for CentOS, CoreOS, Debian, openSUSE and Ubuntu
   For more information please visit https://github.com/Vtrois/SpacePack
===========================================================================
"
echo -e "\n\033[36mStep 1: Check root privilege\033[0m"
if [ "$(id -u)" != "0" ];then  
	echo -e "\033[31mError, this script must be run as root!\n\033[0m"
	exit 1
fi