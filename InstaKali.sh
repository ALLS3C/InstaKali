#!/bin/bash

function pause()
{
   read -p "$*"
}

#Updating OS
pause "Press Enter to update O/S"
apt-get update
apt-get dist-upgrade -y

#Setting up Metasploit database
pause "Press Enter to setup Metasploit database (note this does NOT enable Metasploit Logging)"
service postgresql start
service metasploit start

#Create opt folder
pause "Press Enter to create the opt folder"
mkdir /opt

#Setting up Discover Scripts
pause "Press Enter to setup Discover Scripts"
git clone https://github.com/leebaird/discover.git /opt/Discover
cd /opt/Discover
./setup.sh

#Download WCE
pause "Press Enter to install WCE"
cd ~/Desktop
wget http://www.ampliasecurity.com/research/wce_v1_41beta_universal.zip
unzip -d ./wce wce_v1_41beta_universal.zip

#Installing Nmap Banner Plus script
pause "Press Enter to install Nmap Banner Plus script"
cd /usr/share/nmap/scripts
wget https://raw.github.com/hdm/scan-tools/master/nse/banner-plus.nse

#Installing Fuzzing Lists
pause "Press Enter to install Fuzzing Lists"
git clone https://github.com/danielmiessler/SecLists.git /opt/SecLists

#Installing Armitage
pause "Press Enter to install Armitage"
apt install armitage -y

#Installing Checksec
pause "Press Enter to install Checksec"
apt install checksec -y

#Installing DBeaver
pause "Press Enter to install DBeaver"
apt install dbeaver dbeaver-dbgsym -y

#Installing Empire
git clone https://github.com/EmpireProject/Empire.git /opt/Empire

#Installing ExifTool
apt install libimage-exiftool-perl -y

#Installing GDB
apt install gdb -y

#Installing GDB-Peda
git clone https://github.com/longld/peda.git ~/Peda
echo "source ~/Peda/peda.py" >> ~/.gdbinit

#Installing Gobuster
apt install gobuster -y

#Installing JAWS
git clone https://github.com/411Hall/JAWS.git /opt/JAWS

#Installing Johnny
apt install johnny -y

#Installing JQ
apt install jq -y

#Installing LinEnum.sh
git clone https://github.com/rebootuser/LinEnum.git /opt/LinEnum

#Installing Nishang
git clone https://github.com/samratashok/nishang.git /opt/Nishang

#Installing PyPy
git clone https://github.com/DominicBreuker/pspy.git /opt/PsPy

#Installing RLwrap
apt install rlwap -y

#Installing Unicorn
git clone https://github.com/trustedsec/unicorn.git /opt/Unicorn

#Installing Veil
pause "Press Enter to install Veil"
git clone https://github.com/Veil-Framework/Veil.git /opt/Veil
cd /opt/Veil/
./config/setup.sh --force --silent

#Install Xclip
pause "Press Enter to install Xclip"
apt install xclip -y

#Installing Firefox Extensions
pause "Press Enter to open pages to each Firefox web browser
extension. Install each one."
firefox https://addons.mozilla.org/en-US/firefox/addon/web-developer
firefox https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard

#We're done!
pause "Thats it! Press Enter to exit this script"
