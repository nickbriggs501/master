apt install git wget nano vim python python2
apt install net-tools curl termux-api zsh
apt install root-repo x11-repo unstable-repo
apt install game-repo figlet toilet cowsay
apt install dialog nmap hydra w3m cmatrix
apt install libcaca openssh



#oh my zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Syntax
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#plugins=( [plugins...] zsh-syntax-highlighting)
#edit zshrc and add syntax to plugins

#adb
wget https://github.com/MasterDevX/Termux-ADB/raw/master/InstallTools.sh && bash InstallTools.sh

#style
git clone https://github.com/adi1090x/termux-style.git
cd termux-style
chmod +x setup
./setup

#metasploit
apt install metasploit

#tool-x
git clone https://github.com/Rajkumrdusad/Tool-X.git
cd Tool-X
chmod +x install.aex
./install.aex

#hacktronian
git clone https://github.com/thehackingsage/hacktronian.git
cd hacktronian
chmod +x hacktronian.py
python2 hacktronian.py

#
