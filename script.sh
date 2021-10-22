#!/bin/bash
sudo apt update
echo "updated packages"
sleep 1
#Install some packages
sudo apt install gufw clamav libpam-cracklib neovim bum
echo "Installed packages"
sleep 1
#Remove some packages
sudo apt remove wireshark john
echo "Removed potentialy malicious software"
sleep 1
#Disallow guest logins
#echo "allow-guest=false" | sudo tee -a /etc/lightdm/lightdm.conf
#echo "Dissalowed guest logins"
#sleep 1
#Change some password policy
sudo sed 's/^PASS_MAX_DAYS.*/PASS_MAX_DAYS   90/g' /etc/login.defs
sudo sed 's/^PASS_MIN_DAYS.*/PASS_MIN_DAYS   10/g' /etc/login.defs
sudo sed 's/^PASS_WARN_AGE.*/PASS_WARN_AGE   7/g' /etc/login.defs
echo "auth required pam_tally2.so deny=5 onerr=fail unlock_time=1800" | sudo tee -a /etc/pam.d/common-auth
echo "Change password policy"
#Run an antivirus scan
clamscan

