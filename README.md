<h2>Install Script for iSpy Agent DVR Web Interfaces</h2>
<br/><br/>
install a rasbian lite on a 32GB SD card<br/>
<br/>
mount the boot partition of the sd and add an empty file with the name "ssh"<br/>
<br/>
put the SD in the raspi and boot<br/>
<br/>
find the ip address of the pi:<br/>
<ul>
    <li> either by login on to the router </li>
    <li>  or using nmap -sP <network address> </li>
    <li> or if you connect a monitor log in with pi and raspberry and use "ip addr" </li>
</ul>
<br/>
scp the install.sh and the ispyagent.service files to the pi and<br/>
like so: <br/>
    <p>scp install.sh ispyagent.service pi@<ip address of pi>:.</p>
<br/>
ssh into the pi:<br/>
<p>ssh <ip address of pi> -lpi/p>
<br/>
make the install.sh executable:<br/>
    <p>chmod +x install.sh</p><br/>
start the install.sh script with sudo:<br/>
    <p>sudo ./install.sh</p><br/>
installation takes about 2-3 minutes on a pi4 depending on internet speed

<br/>
log into Agent DVR via your browser at http://<ip address of pi>:8090<br/>
