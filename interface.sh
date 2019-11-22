#!/bin/bash

BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

# High Intensity
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan

red="\e[0;31m"
new="\e[0;36m"
green="\e[0;32m"
off="\e[0m"

clear
 echo -e "			$BCyan      		$UWhite Breached Data Searcher $off"; 
 echo -e "			$BGreen             Facebook - fb.com/mubassir.py $off";
 echo -e "			$BGreen             Facebook - fb.com/officialharoonawan $BCyan $off"; 
 echo -e "			$BGreen             Github   - github.com/haroonawanofficial $off ";
 echo -e "			$BGreen             Coder    - Haroon Awan / mrharoonawan@gmail.com $off ";
 echo ""; 
 echo ""; 

 echo -e "$red [$green+$red] $BCyan Loading Automatic Data Breacher $BCyan $off"; 
 echo -e "$red [$green!$red] $BCyan Do Not Abuse, Data Leeching Mode Will Be Blocked $off ";
 echo -e "$red [$green!$red] $BCyan Sample Data: General Keyword, Query, Emails, Files $off ";
 echo ""; 
 echo ""; 

echo -ne "$red [$green+$red] $off Enter Search Data: "
read datasearch
python pwnbin.py -k $datasearch -o data.txt
sed -e "s/^found key in //g" data.txt > domains.txt
rm data.txt > /dev/null


for url in $(cat domains.txt) 
do 
 echo -e ""
  if curl --output /dev/null --silent --head --fail "$url"; then
    echo -e "[+] URL exists         : $url"
  else
    echo -e "[+] URL does not exist : $url"
  fi
  echo -e "[+] Leeching Data      : $url"
  if curl --output data.txt --silent --head --fail "$url"; then
    echo -e "[+] URL Downloaded     : $url"
  else
    echo -e "[+] URL Not Downloaded : $url"
 fi
 echo -e ""
done
