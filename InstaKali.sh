#!/bin/bash

function pause()
{
   read -p "$*"
}

# ===========
# Updating OS
# ===========
pause "Press Enter to update O/S"
apt-get update
apt-get dist-upgrade -y

# ==================
# Setting up aliases
# ==================

pause "Press Enter to setup aliases"
mv .bash_aliases ~/.bash_aliases

# ====================
# Setting up tmux.conf
# ====================

pause "Press Enter to setup tmux conf"
mv .tmux.conf ~/.tmux.conf

# ==============================
# Setting up Metasploit database
# ==============================

pause "Press Enter to setup Metasploit database (note this does NOT enable Metasploit Logging)"
service postgresql start
service metasploit start

# =================
# Create /opt folder
# =================

pause "Press Enter to create the opt folder"
mkdir /opt

# ===========================
# Setting up Discover Scripts
# ===========================

pause "Press Enter to setup Discover Scripts"
git clone https://github.com/leebaird/discover.git /opt/discover
cd /opt/discover
./setup.sh

# ====================
# Unziping rockyou.txt
# ====================

pause "Press Enter to unzip rockyou.txt"
gunzip /usr/share/wordlists/rockyou.txt.gz

# ============
# Download WCE
# ============

pause "Press Enter to install WCE"
cd ~/Desktop
wget http://www.ampliasecurity.com/research/wce_v1_41beta_universal.zip
unzip -d ./wce wce_v1_41beta_universal.zip

# =====================
# Install nmapAutomator
# =====================

pause "Press Enter to install nmapAutomator"
git clone https://github.com/21y4d/nmapAutomator.git /opt/nmapAutomator
chmod +x /opt/nmapAutomator/nmapAutomator.sh

# ==================================
# Installing Nmap Banner Plus script
# ==================================

pause "Press Enter to install Nmap Banner Plus script"
wget https://raw.github.com/hdm/scan-tools/master/nse/banner-plus.nse -P /usr/share/nmap/scripts/

# ==============================
# Installing Nmap Vulners script
# ==============================

pause "Press Enter to install Nmap Vulners script"
git clone https://github.com/vulnersCom/nmap-vulners.git /opt/nmap-vulners
cp /opt/nmap-vulners/vulners.nse /usr/share/nmap/scripts/
cp /opt/nmap-vulners/http-vulners-regex.nse /usr/share/nmap/scripts/

# ========================
# Installing Fuzzing Lists
# ========================

pause "Press Enter to install Fuzzing Lists"
git clone https://github.com/danielmiessler/SecLists.git /opt/seclists

# ==============================
# Installing Armitage
# ===================

pause "Press Enter to install Armitage"
apt install armitage -y

# =====================
# Installing Bloodhound
# =====================

pause "Press Enter to install Bloodhound"
apt install bloodhound -y

# ===================
# Installing Checksec
# ===================

pause "Press Enter to install Checksec"
apt install checksec -y

# =====================
# Installing ciscot7.py
# =====================

pause "Press Enter to install Cisco Type 7 password cracker"
git clone https://github.com/theevilbit/ciscot7.git /opt/ciscot7

# =======================
# Installing Crackmapexec
# =======================

pause "Press Enter to install Crackmapexec"
apt install crackmapexec -y

# ==================
# Installing DBeaver
# ==================

pause "Press Enter to install DBeaver"
apt install dbeaver dbeaver-dbgsym -y

# =================
# Installing Empire
# =================

pause "Press Enter to install Empire"
git clone https://github.com/EmpireProject/Empire.git /opt/empire

# ====================
# Installing EvilWinRM
# ====================

pause "Press Enter to install EvilWinRM"
git clone https://github.com/Hackplayers/evil-winrm.git /opt/evil-winrm
gem install evil-winrm

# ===================
# Installing ExifTool
# ===================

pause "Press Enter to install ExifTool"
apt install libimage-exiftool-perl -y

# ===========
# Install PIP
# ===========

pause "Press Enter to Install PIP"
apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential -y

# ==============
# Installing GDB
# ==============

pause "Press Enter to install everything for GDB (Gef etc)"
apt install gdb -y

# ====================
# Installing gdbServer
# ====================

pause "Press Enter to install gdbServer"
apt install gdbserver -y

# ========================================
# Installing cmake (needed to install Gef)
# ========================================

pause "Press Enter to install cmake"
apt install cmake -y

# ==============
# Installing Gef
# ==============

pause "Press Enter to install Gef"
wget -O ~/.gdbinit-gef.py -q https://github.com/hugsy/gef/raw/master/gef.py
echo source ~/.gdbinit-gef.py >> ~/.gdbinit

# ===================
# Installing KeePass2
# ===================

pause "Press Enter to install KeePass2"
apt install keepass2 -y

# =======================================
# Installing Keystone, Unicorn and Ropper
# =======================================

pause "Press Enter to install Keystone, Unicorn and Ropper"
pip3 install keystone-engine unicorn ropper

# ====================
# Installing LFI Suite
# ====================

pause "Press Enter to install LFI Suite"
git clone https://github.com/D35m0nd142/LFISuite.git /opt/LFISuite

# ===================
# Installing PwnTools
# ===================

pause "Press Enter to install PwnTools"
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade git+https://github.com/Gallopsled/pwntools.git

# ===================
# Installing Gobuster
# ===================

pause "Press Enter to install Gobuster"
apt install gobuster -y

# ===============
# Installing JAWS
# ===============

pause "Press Enter to install JAWS"
git clone https://github.com/411Hall/JAWS.git /opt/JAWS

# =================
# Installing Johnny
# =================

pause "Press Enter to install Johnny"
apt install johnny -y

# =============
# Installing JQ
# =============

pause "Press Enter to install JQ"
apt install jq -y

# =====================
# Installing LinEnum.sh
# =====================

pause "Press Enter to install LinEnum"
git clone https://github.com/rebootuser/LinEnum.git /opt/lineum

# ==================
# Installing Nishang
# ==================

pause "Press Enter to install Nishang"
git clone https://github.com/samratashok/nishang.git /opt/Nishang

# ===============
# Installing PyPy
# ===============

pause "Press Enter to install PSpy"
git clone https://github.com/DominicBreuker/pspy.git /opt/pspy

# ======================
# Installing Reconnoitre
# ======================

pause "Press Enter to install Reconnoitre"
git clone https://github.com/codingo/Reconnoitre.git /opt/reconnoitre
cd /opt/reconnoitre/
python3 setup.py install

# ======================
# Installing Redis Tools
# ======================

pause "Press Enter to install Redis tools"
apt install redis-tools -y

# =================
# Installing RLwrap
# =================

pause "Press Enter to install Rlwrap"
apt install rlwrap -y

# ==================
# Installing Unicorn
# ==================

pause "Press Enter to install Unicorn"
git clone https://github.com/trustedsec/unicorn.git /opt/unicorn

# ===============
# Installing Veil
# ===============

pause "Press Enter to install Veil"
git clone https://github.com/Veil-Framework/Veil.git /opt/veil
/opt/veil/config/setup.sh --force --silent

# =======================
# Installing WindAPSearch
# =======================

pause "Press Enter to install WindAPSearch"
git clone https://github.com/ropnop/windapsearch.git /opt/windapsearch

# =============
# Install Xclip
# =============

pause "Press Enter to install Xclip"
apt install xclip -y

# =============================
# Installing GhostPack Seatbelt
# =============================

pause "Press Enter to install GhostPack Seatbelt"
git clone https://github.com/GhostPack/Seatbelt.git /opt/seatbelt

# =================
# Installing Golang
# =================

pause "Press Enter to install Golang"
apt-get install golang

# =================
# Installing ffuf
# =================

pause "Press Enter to install ffuf"
git clone https://github.com/ffuf/ffuf.git /opt/ffuf

# ===========================
# Installing Username Anarchy
# ===========================

pause "Press Enter to install Username Anarchy"
git clone https://github.com/urbanadventurer/username-anarchy.git /opt/username-anarchy

# ================
# Installing PEASS
# ================

pause "Press Enter to install PEASS"
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git /opt/privilege-escalation-awesome-scripts-suites

# ===================
# Installing Kerbrute
# ===================

pause "Press Enter to install Kerbrute"
go get github.com/ropnop/kerbrute

# =============================================
# Installing SharpHound Ingestor for Bloodhound
# =============================================

pause "Press Enter to install SharpHound for Bloodhound"
wget https://github.com/BloodHoundAD/BloodHound/blob/master/Ingestors/SharpHound.exe -P /opt/bloodhound/

# ===========
# We're done!
# ===========

pause "Thats it! Press Enter to exit this script"
