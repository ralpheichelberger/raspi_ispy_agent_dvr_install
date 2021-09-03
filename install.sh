wget https://download.visualstudio.microsoft.com/download/pr/a119100f-e7b3-4c30-a91a-d6ce6b02b51a/196c932070dd023726664a9789e4dc83/dotnet-runtime-3.1.11-linux-arm.tar.gz
HOME=/home/pi
mkdir -p $HOME/dotnet
sudo tar zxf dotnet-runtime-3.1.11-linux-arm.tar.gz -C $HOME/dotnet
echo 'export DOTNET_ROOT=$HOME/dotnet' >> $HOME/.profile
echo 'export PATH=$PATH:$HOME/dotnet' >> $HOME/.profile
apt update
apt install -y ffmpeg 
apt-get install -y libtbb-dev libc6-dev gss-ntlmssp libatlas-base-dev
pip3 install opencv-contrib-python
HOME=/home/pi
cd $HOME
wget https://ispyfiles.azureedge.net/downloads/Agent_ARM32_3_5_4_0.zip
mkdir $HOME/agentdvr
cd $HOME/agentdvr
unzip ../Agent_ARM32_3_5_4_0.zip
chown -R pi:pi $HOME/agentdvr
cd $HOME
cp ispyagent.service /lib/systemd/system
systemctl daemon-reload
systemctl enable ispyagent
systemctl start ispyagent
