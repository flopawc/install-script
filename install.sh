#!/bin/bash

echo what you want to do [install/uninstall]
while :
do 
	read response
	case $response in 
		"install")
			echo "We will install chrome, atom, selenium and chromedriver98 :)"
			cd ~
			cd Desktop/
			mkdir selenium
			cd selenium
			wget https://chromedriver.storage.googleapis.com/98.0.4758.80/chromedriver_linux64.zip
			unzip chromedriver_linux64.zip
			sudo apt install snapd
			echo "installing atom"
			snap install atom --classic
			#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
			#sudo apt install ./google-chrome-stable_current_amd64.deb
			;;
		uninstall)
			echo "we will uninstall chrome, atom, selenium and chromedriver :)"
			cd ~
			cd Desktop/
			rm -r selenium
			snap remove atom
			;;
		*)
			echo l2p
			break
			;;
			
	esac
done
echo
echo done!
exit	
			
