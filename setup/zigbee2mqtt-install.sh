#!/usr/bin/env bash

set -e
CROSS='\033[1;31m\xE2\x9D\x8C\033[0m'
RD=`echo "\033[01;31m"`
BL=`echo "\033[36m"`
CM='\xE2\x9C\x94\033'
GN=`echo "\033[1;92m"`
CL=`echo "\033[m"`
RETRY_NUM=5
RETRY_EVERY=3
NUM=$RETRY_NUM

echo -en "${GN} Setting up Container OS... "
sed -i "/$LANG/ s/\(^# \)//" /etc/locale.gen
locale-gen >/dev/null
while [ "$(hostname -I)" = "" ]; do
  1>&2 echo -en "${CROSS}${RD}  No Network! "
  sleep $RETRY_EVERY
  ((NUM--))
  if [ $NUM -eq 0 ]
  then
    1>&2 echo -e "${CROSS}${RD}  No Network After $RETRY_NUM Tries${CL}"    
    exit 1
  fi
done
echo -e "${CM}${CL} \r"
echo -en "${GN} Network Connected: ${BL}$(hostname -I)${CL} "
echo -e "${CM}${CL} \r"

echo -en "${GN} Updating Container OS... "
apt update &>/dev/null
apt-get -qqy upgrade &>/dev/null
echo -e "${CM}${CL} \r"

echo -en "${GN} Installing Dependencies... "
apt-get install -y curl &>/dev/null
apt-get install -y sudo &>/dev/null
echo -e "${CM}${CL} \r"

echo -en "${GN} Setting up Node.js Repository... "
sudo curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - &>/dev/null
echo -e "${CM}${CL} \r"

echo -en "${GN} Installing Node.js... "
sudo apt-get install -y nodejs git make g++ gcc &>/dev/null
echo -e "${CM}${CL} \r"
 
echo -en "${GN} Setting up Zigbee2MQTT Repository... "
sudo git clone https://github.com/Koenkk/zigbee2mqtt.git /opt/zigbee2mqtt &>/dev/null
echo -e "${CM}${CL} \r"

echo -en "${GN} Installing Zigbee2MQTT... "
cd /opt/zigbee2mqtt &>/dev/null
npm ci &>/dev/null
echo -e "${CM}${CL} \r"

service_path="/etc/systemd/system/zigbee2mqtt.service"
echo "[Unit]
Description=zigbee2mqtt
After=network.target
[Service]
ExecStart=/usr/bin/npm start
WorkingDirectory=/opt/zigbee2mqtt
StandardOutput=inherit
StandardError=inherit
Restart=always
User=root
[Install]
WantedBy=multi-user.target" > $service_path

echo -en "${GN} Customizing Container... "
rm /etc/motd
rm /etc/update-motd.d/10-uname
touch ~/.hushlogin
GETTY_OVERRIDE="/etc/systemd/system/container-getty@1.service.d/override.conf"
mkdir -p $(dirname $GETTY_OVERRIDE)
cat << EOF > $GETTY_OVERRIDE
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin root --noclear --keep-baud tty%I 115200,38400,9600 \$TERM
EOF
systemctl daemon-reload
systemctl restart $(basename $(dirname $GETTY_OVERRIDE) | sed 's/\.d//')
echo -e "${CM}${CL} \r"

echo -en "${GN} Cleanup... "
apt-get autoremove >/dev/null
apt-get autoclean >/dev/null
rm -rf /var/{cache,log}/* /var/lib/apt/lists/*
echo -e "${CM}${CL} \n"