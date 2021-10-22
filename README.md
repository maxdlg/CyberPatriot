# DO THE FORENSICS QUESTIONS FIRST, THEN RUN THE SCRIPT
### Steps to take
1. updates
    * settings => software and updates => updates
    * check for updates daily, download and install automatically security updates
2. firewall
    * turn it on, reject incoming, allow outgoing
3. malware and virus
    * just use clamscan
    * remove potentially malicious software(wireshark, jack the ripper, etc)
4. groups
    * just use the gui, its really annoying
5. firefox settings
    * disable login saving, block popup windows, warn when websites try to install addons, etc.
6. turn off guest account
    * sudo vim /etc/lightdm/lightdm.conf
    * under [Seat:*] add allow-guest=false
