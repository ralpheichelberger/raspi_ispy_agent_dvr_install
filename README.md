install a rasbian lite on a 32GB SD card

mount the boot partition of the sd and add an empty file with the name "ssh"

put the SD in the raspi and boot

find the ip address of the pi:
    - either by login on to the router 
    - or using nmap -sP <network address>
    - or if you connect a monitor log in with pi and raspberry and use "ip addr"

scp the install.sh and the ispyagent.service files to the pi and
like so: 
    scp install.sh ispyagent.service pi@<ip address of pi>:.

make the install.sh executable:
    chmod +x install.sh
start the install.sh script with sudo:
    sudo ./install.sh

log into Agent DVR via your browser at http://<ip address of pi>:8090
