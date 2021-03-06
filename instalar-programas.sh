#!/bin/bash

clear
while true; do
echo -e "#############################################################
        \e[1;31mPROGRAM INSTALLATION SYSTEM\e[0m                     #
                                                                     #
        Enter the number of the program you want to install:         #
                                                                     #
        1 - Gnome Tweak Tool                                         # 
        2 - Utilitários de arquivo                                   #
        3 - Virtualbox                                               #
        4 - VLC player                                               #
        5 - Gimp                                                     #
        6 - Pinta                                                    # 
        7 - Brasero                                                  #
        8 - Google Chrome                                            #
        9 - Skype                                                    #
       10 - Blender                                                  #
       11 - Clean the system                                         #
       12 - Gparted                                                  #
       13 - Editor Dconf                                             # 
       14 - Audacity                                                 #
       15 - Install all programs                                     #
       0 - Exit                                                      #
######################################################################"

echo " "
echo -n "->OPTION:  "

read option

# checks if an option has been entered.
if [ -z $option ]; then
    echo ERROR: enter an option
    exit
fi

case $option in

    1)
   apt install gnome-tweak-tool -y;;
    2)
   sudo apt install unace rar unrar p7zip-rar p7zip sharutils uudeview mpack arj cabextract lzip lunzip plzip -y;;
    3)
   wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
   wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
   sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian bionic contrib"
   sudo apt update
   sudo apt install virtualbox-6.0 -y;;
    4)
   sudo apt install vlc -y;;
    5)  
   sudo apt install gimp -y;;
    6)  
   sudo apt install pinta -y;;
    7)  
   sudo apt install brasero -y;;
    8) 
   wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
   sudo dpkg -i google-chrome-stable_current_amd64.deb
   ;;

    9) 
   echo "deb [arch=amd64] https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skype-stable.list
   wget https://repo.skype.com/data/SKYPE-GPG-KEY
   sudo apt-key add SKYPE-GPG-KEY
   sudo apt install apt-transport-https
   sudo apt update
   sudo apt install skypeforlinux -y
   ;;
   10)  
   sudo apt update
   apt install blender -y
   ;;
   11)
   sudo apt clean
   sudo apt autoclean   
   sudo apt autoremove -y
   ;;
   12)
   sudo apt install gparted -y
   ;;
   13) 
   sudo apt install dconf-editor -y
   ;;
   14)  
   sudo apt install audacity -y
   ;;
   15)
   apt install unace rar unrar p7zip-rar p7zip sharutils uudeview mpack arj cabextract lzip lunzip plzip -y
   wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
   wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
   sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian bionic contrib"
   sudo apt update
   sudo apt install virtualbox-6.0 -y
   apt install vlc gimp pinta brasero gnome-tweak-tool -y
   wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
   sudo dpkg -i google-chrome-stable_current_amd64.deb
   ;;
    0)  
   echo "" 
        echo Exiting the installation system ...
   sleep 3
        exit
   ;;
    *)
        echo
        echo ERROR: Incorrect option!
   echo ""
   echo "Try again!"
        echo 
   ;;
esac
done