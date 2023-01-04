<h1><p align="center"><a href="https://tteck.github.io/Proxmox/">Proxmox Helper Scripts</a></p></h1>
<div align="center"> Always remember to use due diligence when sourcing scripts and automation tasks from third-party sites. </div>

Proxmox Helper Scripts
Proxmox Scripts For Home Automation
View on GitHub
Search 󠁝 󠁝 󠁝 󠁝 󠁝 󠁝 󠁝 󠁝 󠁝 󠁝 󠁝License MIT Discussions Changelog Buy me a coffee
󠀠 󠀠 󠀠➕ 󠀠 󠀠 󠀠 󠀠 󠀠 󠀠➖ 󠀠 󠀠
Proxmox Tools
Proxmox VE 7 Post Install

Proxmox VE 7 Post Install

The script will give options to Disable the Enterprise Repo, Add/Correct PVE7 Sources, Enable the No-Subscription Repo, Add Test/Beta Repo, Disable Subscription Nag, Update Proxmox VE and Reboot PVE.

Run the following in the Proxmox Shell. ⚠️ PVE7 ONLY

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/post-pve-install.sh)"

It's recommended to answer y to all options.
Proxmox Kernel Clean

Proxmox Kernel Clean
Cleaning unused kernel images is not only good because of a reduced grub menu, but also gains some disk space.

Run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/kernel-clean.sh)"

Proxmox Edge Kernel Tool

Proxmox Edge Kernel Tool

PVE Edge Kernels are custom Linux Kernels for Proxmox VE 7. Keeping up with new Kernel releases instead of LTS

Run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/edge-kernel.sh)"

Proxmox CPU Scaling Governor

Proxmox CPU Scaling Governor

CPU Scaling Governor enables the operating system to scale the CPU frequency up or down in order to save power or improve performance. Generic Scaling Governors

Run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/scaling-governor.sh)"

Proxmox LXC Updater

Proxmox LXC Updater
Update All LXC's Fast & Easy (Ubuntu, Debian, Devuan, Alpine Linux, CentOS-Rocky-Alma, Fedora, ArchLinux)

Run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/update-lxcs.sh)"

Proxmox Dark Theme

Proxmox Discord Dark Theme

A dark theme for the Proxmox Web UI by Weilbyte

Run the following in the Proxmox Shell.

bash <(curl -s https://raw.githubusercontent.com/Weilbyte/PVEDiscordDark/master/PVEDiscordDark.sh ) install

To uninstall the theme, simply run the script with the uninstall command.
Proxmox Backup Server Post Install

Proxmox Backup Server Post Install
The script will give options to Disable the Enterprise Repo, Add/Correct PBS Sources, Enable the No-Subscription Repo, Add Test Repo, Disable Subscription Nag, Update Proxmox Backup Server and Reboot PBS.

Run the following in the Proxmox Shell. ⚠️ Proxmox Backup Server ONLY

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/post-pbs-install.sh)"

It's recommended to answer y to all options.
Home Assistant
Home Assistant OS VM

Home Assistant OS VM
Option to create VM using Stable, Beta, Dev or Latest Image

The script automates the manual process of finding, downloading and extracting the Official KVM (qcow2) disk image provided by the Home Assistant Team, creating a VM with user defined settings, importing and attaching the disk, setting the boot order and starting the VM. No hidden (kpartx, unzip, ect...) installs of any kind. Supports lvmthin, zfspool, nfs, dir and btrfs storage types.

To create a new Proxmox Home Assistant OS VM, run the following in the Proxmox Shell

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/vm/haos-vm-v4.sh)"

⚡ Default Settings: 4GB RAM - 32GB Storage - 2vCPU - Stable Image ⚡

After the script completes, click on the VM, then on the Summary tab to find the VM IP.

Home Assistant Interface: IP:8123
PiMox HAOS VM

PiMox HAOS VM
Option to create VM using Stable, Beta or Dev Image

The script automates the manual process of finding, downloading and extracting the aarch64 (qcow2) disk image provided by the Home Assistant Team, creating a VM with user defined settings, importing and attaching the disk, setting the boot order and starting the VM.

To create a new PiMox HAOS VM, run the following in the Proxmox Shell

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/vm/pimox-haos-vm-v4.sh)"

⚡ Default Settings: 4GB RAM - 32GB Storage - 2vCPU - Stable Image ⚡

After the script completes, click on the VM, then on the Console tab to find the VM IP.

Home Assistant Interface: IP:8123
Home Assistant Container LXC

GitHub - portainer/portainer-docs: Portainer documentation
Home Assistant Container LXC
Option to Use Fuse Overlayfs (Advanced)

🛈 If the LXC is created Privileged, the script will automatically set up USB passthrough.

A standalone container-based installation of Home Assistant Core

To create a new Proxmox Home Assistant Container LXC, run the following in the Proxmox Shell.
To Update ALL Containers, Remove Unused Images or Install HACS, run the following in the LXC Console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/homeassistant-v5.sh)"

⚡ Default Settings: 2GB RAM - 16GB Storage - 2vCPU ⚡

Home Assistant Interface: IP:8123

Portainer Interface: IP:9000

⚙️ Path to HA /config

/var/lib/docker/volumes/hass_config/_data

Home Assistant Core LXC

Home Assistant Core LXC

A standalone installation of Home Assistant Core

🛈 If the LXC is created Privileged, the script will automatically set up USB passthrough.

To create a new Proxmox Home Assistant Core LXC, run the following in the Proxmox Shell.
To Initialize (first start), Update or Install HACS, run the following in the LXC Console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/homeassistant-core-v5.sh)"

⚡ Default Settings: 1GB RAM - 8GB Storage - 2vCPU ⚡
Podman Home Assistant Container LXC

@home-assistant
Podman Home Assistant Container LXC

A standalone container-based installation of Home Assistant Core

⚠️ Podman seems to need a privileged LXC

🛈 If the LXC is created Privileged, the script will automatically set up USB passthrough.

To create a new Proxmox Podman Home Assistant Container LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/podman-homeassistant-v4.sh)"

⚡ Default Settings: 2GB RAM - 16GB Storage - 2vCPU ⚡

Home Assistant Interface: IP:8123

Yacht Interface: IP:8000

⚙️ Path to HA /config

/var/lib/containers/storage/volumes/hass_config/_data

⚙️ To edit the HA configuration.yaml

Run in the LXC console

nano /var/lib/containers/storage/volumes/hass_config/_data/configuration.yaml

Save and exit the editor with “Ctrl+O”, “Enter” and “Ctrl+X”

⚙️ Copy Data From a Existing Home Assistant LXC to a Podman Home Assistant LXC

Run in the Proxmox Shell

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/ha-copy-data-podman.sh)"

⚙️ To Install HACS:

Run in the LXC console

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/podman_hacs.sh)"

After install, reboot Home Assistant and clear browser cache then Add HACS integration.

⚙️ Initial Yacht Login

username admin@yacht.local

password pass
Automation
ioBroker LXC

ioBroker LXC

ioBroker is an open source automation platform.

To create a new Proxmox ioBroker LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/iobroker-v4.sh)"

⚡ Default Settings: 2GB RAM - 8GB Storage - 2vCPU ⚡

ioBroker Interface: IP:8081

⚙️ To Update ioBroker

update from the ioBroker UI
openHAB LXC

openHAB LXC

openHAB, a vendor and technology agnostic open source automation software for your home.

To create a new Proxmox openHAB LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/openhab-v4.sh)"

⚡ Default Settings: 2GB RAM - 8GB Storage - 2vCPU ⚡

openHAB Interface: IP:8080

⚙️ To Update openHAB

apt update && apt upgrade -y

Homebridge LXC

Homebridge LXC

Homebridge allows you to integrate with smart home devices that do not natively support HomeKit

To create a new Proxmox Homebridge LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/homebridge-v4.sh)"

⚡ Default Settings: 1GB RAM - 4GB Storage - 1vCPU ⚡

Homebridge Interface: IP:8581

⚙️ Initial Login

username admin

password admin

⚙️ To Update Homebridge

Update from the Homebridge UI
ESPHome LXC

ESPHome LXC

ESPHome is a system to control your ESP8266/ESP32 by simple yet powerful configuration files and control them remotely through Home Automation systems.

To create a new Proxmox ESPHome LXC, run the following in the Proxmox Shell.
To Update ESPHome, run the following in the LXC Console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/esphome-v5.sh)"

⚡ Default Settings: 1GB RAM - 4GB Storage - 2vCPU ⚡

ESPHome Interface: IP:6052
Node-Red LXC

Node-Red LXC

Node-RED is a programming tool for wiring together hardware devices, APIs and online services in new and interesting ways.

To create a new Proxmox Node-RED LXC, run the following in the Proxmox Shell.
To Update Node-Red or Install Themes run the following in the LXC Console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/node-red-v5.sh)"

⚡ Default Settings: 1GB RAM - 4GB Storage - 1vCPU ⚡

Node-Red Interface: IP:1880
n8n LXC

n8n LXC

n8n is an extendable workflow automation tool which enables you to connect anything to everything.

To create a new Proxmox n8n LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/n8n-v4.sh)"

⚡ Default Settings: 2GB RAM - 3GB Storage - 2vCPU ⚡

n8n Interface: IP:5678

⚙️ To Update n8n

npm update -g n8n

Scrypted LXC

Scrypted LXC
Option to add Coral Edge TPU support

Scrypted is a home automation platform primarily focusing on making camera experiences seamless.

🛈 If the LXC is created Privileged, the script will automatically set up USB passthrough.

To create a new Proxmox Scrypted LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/scrypted-v4.sh)"

⚡ Default Settings: 2GB RAM - 8GB Storage - 2vCPU ⚡

Scrypted Interface: (https)IP:10443
MQTT
MQTT LXC

MQTT LXC

Eclipse Mosquitto is an open source message broker that implements the MQTT protocol

To create a new Proxmox MQTT LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/mqtt-v5.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU ⚡

Mosquitto comes with a password file generating utility called mosquitto_passwd.

sudo mosquitto_passwd -c /etc/mosquitto/passwd <usr>

Password: < password >

Create a configuration file for Mosquitto pointing to the password file we have just created.

sudo nano /etc/mosquitto/conf.d/default.conf

This will open an empty file. Paste the following into it.

allow_anonymous false
persistence true
password_file /etc/mosquitto/passwd
listener 1883

Save and exit the text editor with "Ctrl+O", "Enter" and "Ctrl+X".

Now restart Mosquitto server.

sudo systemctl restart mosquitto

EMQX LXC

EMQX LXC

EMQX is an Open-source MQTT broker with a high-performance real-time message processing engine, powering event streaming for IoT devices at massive scale.

To create a new Proxmox EMQX LXC, run the following in the Proxmox Shell.

  bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/emqx-v5.sh)"

⚡ Default Settings: 1GB RAM - 4GB Storage - 2vCPU ⚡

EMQX Interface: IP:18083

⚙️ Initial Login

username admin

password public

⚙️ Setup

Access Control ➡ Authentication ➡ Create ➡ Next ➡ Next ➡ Create ➡ Users ➡ Add ➡ Username / Password (to authenicate with MQTT) ➡ Save. You're now ready to enjoy a high-performance MQTT Broker.
Database
Mariadb LXC

MariaDB
Mariadb LXC
Option to Install Adminer

MariaDB is a community-developed, commercially supported fork of the MySQL relational database management system.

To create a new Proxmox Mariadb LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/mariadb-v4.sh)"

⚡ Default Settings: 1GB RAM - 4GB Storage - 1vCPU ⚡

To enable MariaDB to listen to remote connections, you need to edit your defaults file. To do this, open the console in your MariaDB lxc:

nano /etc/mysql/my.cnf

Un-comment port =3306 Save and exit the editor with "Ctrl+O", "Enter" and "Ctrl+X".

nano /etc/mysql/mariadb.conf.d/50-server.cnf

Comment bind-address = 127.0.0.1 Save and exit the editor with "Ctrl+O", "Enter" and "Ctrl+X".

For new MariaDB installations, the next step is to run the included security script. This script changes some of the less secure default options. We will use it to block remote root logins and to remove unused database users.

Run the security script:

sudo mysql_secure_installation

Enter current password for root (enter for none): enter

Switch to unix_socket authentication [Y/n] y

Change the root password? [Y/n] n

Remove anonymous users? [Y/n] y

Disallow root login remotely? [Y/n] y

Remove test database and access to it? [Y/n] y

Reload privilege tables now? [Y/n] y

We will create a new account called admin with the same capabilities as the root account, but configured for password authentication.

sudo mysql

Prompt will change to MariaDB [(none)]>

Create a new local admin (Change the username and password to match your preferences)

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'password';

Give local admin root privileges (Change the username and password to match above)

GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;

Now, we'll give the user admin root privileges and password-based access that can connect from anywhere on your local area network (LAN), which has addresses in the subnet 192.168.100.0/24. This is an improvement because opening a MariaDB server up to the Internet and granting access to all hosts is bad practice.. Change the username, password and subnet to match your preferences:

GRANT ALL ON *.* TO 'admin'@'192.168.100.%' IDENTIFIED BY 'password' WITH GRANT OPTION;

Flush the privileges to ensure that they are saved and available in the current session:

FLUSH PRIVILEGES;

Following this, exit the MariaDB shell:

exit

Log in as the new database user you just created:

mysql -u admin -p

Create a new database:

CREATE DATABASE homeassistant;

Following this, exit the MariaDB shell:

exit

⚠️ Reboot the lxc

Checking status.

sudo systemctl status mariadb

Change the recorder: db_url: in your HA configuration.yaml

Example:

recorder:
  db_url: mysql://admin:password@192.168.100.26:3306/homeassistant?charset=utf8mb4

⚙️ To Update Mariadb:

Run in the LXC console

apt update && apt upgrade -y

⚙️ Adminer (formerly phpMinAdmin) is a full-featured database management tool

Adminer Interface: IP/adminer/
PostgreSQL LXC

PostgreSQL LXC
Option to Install Adminer

PostgreSQL, also known as Postgres, is a free and open-source relational database management system emphasizing extensibility and SQL compliance.

To create a new Proxmox PostgreSQL LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/postgresql-v4.sh)"

⚡ Default Settings: 1GB RAM - 4GB Storage - 1vCPU ⚡

To make sure our PostgreSQL is secured with a strong password, set a password for its system user and then change the default database admin user account

Change user password

passwd postgres

Login using Postgres system account

su - postgres

Now, change the Admin database password

psql -c "ALTER USER postgres WITH PASSWORD 'your-password';"

Create a new user.

psql

CREATE USER admin WITH PASSWORD 'your-password';

Create a new database:

CREATE DATABASE homeassistant;

Grant all rights or privileges on created database to the user

GRANT ALL ON DATABASE homeassistant TO admin;

To exit psql

\q

Then type exit to get back to root

Change the recorder: db_url: in your HA configuration.yaml

Example:

recorder:
  db_url: postgresql://admin:your-password@192.168.100.20:5432/homeassistant?client_encoding=utf8

⚙️ To Update PostgreSQL

Run in the LXC console

apt update && apt upgrade -y

⚙️ Adminer (formerly phpMinAdmin) is a full-featured database management tool

Adminer Interface: IP/adminer/
InfluxDB LXC

InfluxDB LXC
Options to Install InfluxDB v1 or v2 and Telegraf

InfluxDB is an open-source time series database developed by the company InfluxData.

Telegraf is an open source plugin-driven server agent for collecting and reporting metrics.

To create a new Proxmox InfluxDB LXC, run the following in the Proxmox Shell.

  bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/influxdb-v4.sh)"

⚡ Default Settings: 2GB RAM - 8GB Storage - 2vCPU ⚡

⚙️ InfluxDB Configuration

Run in the LXC console

nano /etc/influxdb/influxdb.conf

⚙️ Telegraf Configuration

Run in the LXC console

nano /etc/telegraf/telegraf.conf

⚙️ To Update InfluxDB/Telegraf

Run in the LXC console

apt update && apt upgrade -y

Zigbee - Zwave
Zigbee2MQTT LXC

Zigbee2MQTT LXC
Option to switch to Edge/dev branch

Zigbee2MQTT is a standalone nodejs application that connects a zigbee network to MQTT

🛈 If the LXC is created Privileged, the script will automatically set up USB passthrough.

To create a new Proxmox Zigbee2MQTT LXC, run the following in the Proxmox Shell.
To Update Zigbee2MQTT, run the following in the LXC Console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/zigbee2mqtt-v5.sh)"

⚡ Default Settings: 1GB RAM - 4GB Storage - 2vCPU ⚡

⚙️ Determine the location of your adapter

Run in the LXC console

ls -l /dev/serial/by-id

Example Output: lrwxrwxrwx 1 root root 13 Jun 19 17:30 usb-1a86_USB_Serial-if00-port0 -> ../../ttyUSB0

⚙️ ⚠️ Before you start Zigbee2MQTT you need to edit the configuration.yaml

Run in the LXC console

nano /opt/zigbee2mqtt/data/configuration.yaml

Save and exit the editor with “Ctrl+O”, “Enter” and “Ctrl+X”

Example:

frontend:
  port: 9442
homeassistant: true
permit_join: false
mqtt:
  base_topic: zigbee2mqtt
  server: 'mqtt://192.168.86.224:1883'
  user: usr
  password: pwd
  keepalive: 60
  reject_unauthorized: true
  version: 4
serial:
  port: /dev/serial/by-id/usb-1a86_USB_Serial-if00-port0
  #adapter: deconz		#(uncomment for ConBee II)
advanced:
  pan_id: GENERATE
  network_key: GENERATE
  channel: 20

⚙️ Zigbee2MQTT can be started after completing the configuration

Run in the LXC console

cd /opt/zigbee2mqtt && npm start

deCONZ LXC

deCONZ LXC

deCONZ is used to configure, control and display Zigbee networks.

🛈 If the LXC is created Privileged, the script will automatically set up USB passthrough.

To create a new Proxmox deCONZ LXC, run the following in the Proxmox Shell.

  bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/deconz-v4.sh)"

⚡ Default Settings: 1GB RAM - 4GB Storage - 2vCPU ⚡

deCONZ Interface: IP:80

⚙️ To Update deCONZ

Run in the LXC Console

apt update && apt upgrade -y

Z-Wave JS UI LXC

Z-Wave JS UI LXC

Z-Wave JS UI is a fully configurable Z-Wave to MQTT Gateway and Control Panel.

🛈 If the LXC is created Privileged, the script will automatically set up USB passthrough.

To create a new Proxmox Z-Wave JS UI LXC, run the following in the Proxmox Shell.
To Update Z-Wave JS UI, run the following in the LXC Console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/zwave-js-ui-v5.sh)"

⚡ Default Settings: 1GB RAM - 4GB Storage - 2vCPU ⚡

Z-Wave JS UI Interface: IP:8091
Monitoring - Analytics
Uptime Kuma LXC

Uptime Kuma LXC

Uptime Kuma is a self-hosted, open source, fancy uptime monitoring and alerting system. It can monitor HTTP(s) / TCP / HTTP(s) Keyword / Ping / DNS Record / Push / Steam Game Server.

To create a new Proxmox Uptime Kuma LXC, run the following in the Proxmox Shell.
To Update Uptime Kuma, run the following in the LXC Console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/uptimekuma-v5.sh)"

⚡ Default Settings: 1GB RAM - 2GB Storage - 1vCPU ⚡

Uptime Kuma Interface: IP:3001
Change Detection LXC

Change Detection LXC

To create a new Proxmox Change Detection LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/changedetection-v4.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU ⚡

Change Detection Interface: IP:5000

⚙️ To Update

Run in the LXC console

pip3 install changedetection.io --upgrade

Prometheus LXC

Prometheus LXC

Prometheus is an open-source systems monitoring and alerting toolkit

To create a new Proxmox Prometheus LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/prometheus-v4.sh)"

⚡ Default Settings: 2GB RAM - 4GB Storage - 1vCPU ⚡

Prometheus Interface: IP:9090
Grafana LXC

Grafana LXC

Grafana is a multi-platform open source analytics and interactive visualization web application.

To create a new Proxmox Grafana LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/grafana-v5.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU ⚡

Grafana Interface: IP:3000

⚙️ Initial Login

username admin

password admin
Docker
Docker LXC

Docker LXC
Options to Install Portainer and/or Docker Compose V2 and Fuse Overlayfs (ZFS)

🛈 If the LXC is created Privileged, the script will automatically set up USB passthrough.

Docker is an open-source project for automating the deployment of applications as portable, self-sufficient containers.

To create a new Proxmox Docker LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/docker-v5.sh)"

⚡ Default Settings: 2GB RAM - 4GB Storage - 2vCPU ⚡

⚠ Run Compose V2 by replacing the hyphen (-) with a space, using docker compose, instead of docker-compose.

Portainer Interface: IP:9000
Umbrel LXC

Umbrel LXC

Umbrel is a beautiful personal server OS for self-hosting.

To create a new Proxmox Umbrel LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/umbrel-v4.sh)"

⚡ Default Settings: 2GB RAM - 8GB Storage - 2vCPU ⚡

Umbrel Interface: IP (a reboot is required before app installs)

⚙️ To Update Umbrel

update from the Umbrel UI
CasaOS LXC

CasaOS LXC

CasaOS is a community-based open source software focused on delivering simple home cloud experience around Docker ecosystem.

To create a new Proxmox CasaOS LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/casaos-v4.sh)"

⚡ Default Settings: 2GB RAM - 8GB Storage - 2vCPU ⚡

CasaOS Interface: IP

⚙️ To Update CasaOS

update from the CasaOS UI
OS
Debian LXC

Debian
Debian LXC
Debian Linux is a distribution that emphasizes free software. It supports many hardware platforms.

To create a new Proxmox Debian (curl & sudo) LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/debian-v4.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU ⚡

⚙️ To Update Debian

Run in the LXC console

apt update && apt upgrade -y

Ubuntu LXC

Ubuntu
Ubuntu LXC
Option to select version 18.04, 20.04, 21.10 or 22.04
Ubuntu is a distribution based on Debian, designed to have regular releases and a consistent user experience.

To create a new Proxmox Ubuntu (curl & sudo) LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/ubuntu-v4.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU - 22.04 ⚡

⚙️ To Update Ubuntu

Run in the LXC console

apt update && apt upgrade -y

Alpine LXC

Alpine
Alpine LXC
A security-oriented, lightweight Linux distribution based on musl and BusyBox.

To create a new Proxmox Alpine LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/alpine-v4.sh)"

⚡ Default Settings: 512MiB RAM - 100MiB Storage - 1vCPU ⚡

⚙️ Default Password alpine

⚙️ To Update Alpine

Run in the LXC console

apk update && apk upgrade

Arch LXC

Arch
Arch Linux LXC
Arch Linux is an independently developed, x86-64 general-purpose Linux distribution that strives to provide the latest stable versions of most software by following a rolling-release model. The default installation is a minimal base system, configured by the user to only add what is purposely required.

To create a new Proxmox Arch Linux LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/archlinux-v4.sh)"

⚡ Default Settings: 512MiB RAM - 1GB Storage - 1vCPU ⚡

⚙️ Default Password archlinux

⚙️ To get updated:

pacman-key --init

pacman-key --populate archlinux

pacman -Sy archlinux-keyring && pacman -Su
Server - Networking
Nginx Proxy Manager LXC

hero
Nginx Proxy Manager LXC

Nginx Proxy Manager Expose your services easily and securely

To create a new Proxmox Nginx Proxy Manager LXC Container, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/nginx-proxy-manager-v4.sh)"

⚡ Default Settings: 1GB RAM - 3GB Storage - 1vCPU ⚡

Forward port 80 and 443 from your router to your Nginx Proxy Manager LXC IP.

Add the following to your configuration.yaml in Home Assistant.

http:
  use_x_forwarded_for: true
  trusted_proxies:
  - 192.168.100.27 ###(Nginx Proxy Manager LXC IP)###

Nginx Proxy Manager Interface: IP:81

⚙️ Initial Login

username admin@example.com

password changeme

⚙️ To Update Nginx Proxy Manager

Run in the LXC console

  bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/npm_update.sh)"

UniFi Network Application LXC

UniFi Network Application LXC
With Local Controller Option

An application designed to optimize UniFi home and business networks with ease.

To create a new Proxmox UniFi Network Application LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/unifi-v4.sh)"

⚡ Default Settings: 2GB RAM - 8GB Storage - 2vCPU ⚡

UniFi Interface: (https)IP:8443

⚙️ To Update UniFi

Run in the LXC console

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/unifi-update.sh)"

Omada Controller LXC

Omada Controller LXC

Omada Controller is software which is used to manage the EAP

To create a new Proxmox Omada Controller LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/omada-v4.sh)"

⚡ Default Settings: 2GB RAM - 8GB Storage - 2vCPU ⚡

Omada Interface: (https)IP:8043

tpeap status show status of Omada Controller

tpeap start start Omada Controller

tpeap stop stop Omada Controller

⚙️ To Update Omada

#403
WireGuard LXC

WireGuard LXC

To create a new Proxmox WireGuard LXC, run the following in the Proxmox Shell.
To Update WireGuard or Install a Dashboard, run the following in the LXC Console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/wireguard-v5.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU ⚡

⚙️ Host Configuration

Run in the LXC console

nano /etc/pivpn/wireguard/setupVars.conf

⚙️ Add Clients

Run in the LXC console

pivpn add

MeshCentral LXC

MeshCentral LXC

MeshCentral is a full computer management web site. With MeshCentral, you can run your own web server to remotely manage and control computers on a local network or anywhere on the internet.

To create a new Proxmox MeshCentral LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/meshcentral-v4.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU ⚡

MeshCentral Interface: IP

⚙️ To Update MeshCentral

Update from the MeshCentral UI
Tailscale

Tailscale

Tailscale Creates a secure network between your servers, computers, and cloud instances. Even when separated by firewalls or subnets, Tailscale just works.

To Install Talescale on an existing LXC, run the following in the Proxmox Shell (replace 106 with your LXC ID).

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/add-tailscale-lxc.sh)" -s 106

After the script finishes, reboot the LXC then run tailscale up in the LXC console

Tailscale Login

⚙️ To Update Tailscale

Run in the LXC console

apt update && apt upgrade -y

CrowdSec

CrowdSec

CrowdSec is a free, open-source and collaborative IPS. Analyze behaviors, respond to attacks & share signals across the community.

To Install CrowdSec, ⚠️ run the following in the LXC console.

  bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/crowdsec.sh)"

Control center for your CrowdSec machines.
Keycloak LXC

Keycloak LXC

Keycloak is an Open Source Identity and Access Management solution for modern Applications and Services.

To create a new Proxmox Keycloak LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/keycloak-v4.sh)"

Keycloak Interface: IP:8080 (First start can take a few minutes)

⚙️ Initial Login

The initial admin user can be added manually using the web frontend when accessed from localhost or automatically using environment variables.

To add the initial admin user using environment variables, set KEYCLOAK_ADMIN for the initial admin username and KEYCLOAK_ADMIN_PASSWORD for the initial admin password.

First, stop Keycloak

systemctl stop keycloak.service

then start Keycloak by coping & pasting the following (only needed once)

cd /opt/keycloak
export KEYCLOAK_ADMIN=admin
export KEYCLOAK_ADMIN_PASSWORD=changeme
bin/kc.sh start-dev 

Mikrotik RouterOS VM

Mikrotik RouterOS VM

Mikrotik RouterOS can be installed on a PC and will turn it into a router with all the necessary features - routing, firewall, bandwidth management, wireless access point, backhaul link, hotspot gateway, VPN server and more.

To create a new Proxmox Mikrotik RouterOS VM, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/vm/mikrotik-routeros-v4.sh)"

⚡ Default Settings: 1GB RAM - 2GB Storage - 1CPU ⚡

Setup is done via VM console.
Media - Photo
Plex Media Server LXC

Plex Media Server LXC
With Hardware Acceleration Support
To create a new Proxmox Plex Media Server LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/plex-v4.sh)"

⚡ Default Settings: 2GB RAM - 8GB Storage - 2vCPU ⚡

Plex Media Server Interface: IP:32400/web

⚙️ To Update Plex Media Server:

Run in the LXC console

apt update && apt upgrade -y

⚙️ Copy Data From a Existing Plex Media Server LXC to another Plex Media Server LXC

Run in the Proxmox Shell

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/pms-copy-data.sh)"

Emby Media Server LXC

Emby Media Server LXC

Emby brings together your personal videos, music, photos, and live television.

To create a new Proxmox Emby Media Server LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/emby-v4.sh)"

⚡ Default Settings: 2GB RAM - 8GB Storage - 2vCPU ⚡

Emby Media Server Interface: IP:8096

⚙️ To Update Emby

  bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/emby-update.sh)"

Jellyfin Media Server LXC

Jellyfin Media Server LXC

TurnKey has a LXC CT for Jellyfin

To create a new Proxmox Jellyfin Media Server LXC, run the following in the Proxmox Shell.

  bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/jellyfin-v5.sh)"

⚡ Default Settings: 2GB RAM - 8GB Storage - 2vCPU ⚡

Jellyfin Media Server Interface: IP:8096

FFmpeg path: /usr/lib/jellyfin-ffmpeg/ffmpeg
NextCloudPi LXC

NextCloudPi LXC

NextCloudPi LXC is the most popular self-hosted collaboration solution.

To create a new Proxmox NextCloudPi LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/nextcloudpi-v4.sh)"

⚡ Default Settings: 2GB RAM - 8GB Storage - 2vCPU ⚡

NextCloudPi Interface: (https)IP/
OpenMediaVault LXC

OpenMediaVault LXC

OpenMediaVault is the next generation network attached storage (NAS) solution based on Debian Linux.

To create a new Proxmox OpenMediaVault LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/omv-v4.sh)"

⚡ Default Settings: 1GB RAM - 4GB Storage - 2vCPU ⚡

OpenMediaVault Interface: IP

⚙️ Initial Login

username admin

password openmediavault
Navidrome LXC

Navidrome LXC

Navidrome allows you to enjoy your music collection from anywhere, by making it available through a modern Web UI and through a wide range of third-party compatible mobile apps, for both iOS and Android devices.

To create a new Proxmox Navidrome LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/navidrome-v4.sh)"

⚡ Default Settings: 1GB RAM - 4GB Storage - 2vCPU ⚡

To change Navidrome music folder path, edit: /var/lib/navidrome/navidrome.toml

Navidrome Interface: IP:4533

⚙️ To Update Navidrome

Run in the LXC Console

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/navidrome-update.sh)"

PhotoPrism LXC

PhotoPrism LXC

PhotoPrism is an AI-powered app for browsing, organizing & sharing your photo collection.

To create a new Proxmox PhotoPrism LXC, run the following in the Proxmox Shell.
To Update PhotoPrism, run the following in the LXC Console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/photoprism-v5.sh)"

The script builds from source, which takes time and resources. After the build, the script will automatically set resources to Normal Settings.
⚡ Build Settings: 4GB RAM - 8GB Storage - 4vCPU ⚡
⚡ Normal Settings: 2GB RAM - 8GB Storage - 2vCPU ⚡

PhotoPrism Interface: IP:2342

⚙️ Initial Login

username admin

password changeme

PhotoSync
Ad Blocker - DNS
Pi-hole LXC

Pi-hole LXC

Pi-hole is a Linux network-level advertisement and Internet tracker blocking application which acts as a DNS sinkhole and optionally a DHCP server.

To create a new Proxmox Pi-hole LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/pihole-v5.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU ⚡

⚠️ Reboot Pi-hole LXC after install

Pi-hole Interface: IP/admin

⚙️ To set your password:

Run in the LXC console

pihole -a -p

Technitium DNS LXC

Technitium DNS LXC
An open source authoritative as well as recursive DNS server

To create a new Proxmox Technitium DNS LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/technitiumdns-v4.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU ⚡

Technitium DNS Interface: IP:5380

⚙️ To Update Technitium DNS

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/technitiumdns-update.sh)"

AdGuard Home LXC

AdGuard Home LXC

To create a new Proxmox AdGuard Home LXC, run the following in the Proxmox Shell.
To Manually Update AdGuard Home, run the following in the LXC Console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/adguard-v5.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU ⚡

AdGuard Home Setup Interface: IP:3000 (After Setup use only IP)

(For the Home Assistant Integration, use port 80 not 3000)
Blocky LXC

Blocky LXC

Blocky is a DNS proxy and ad-blocker for the local network written in Go. 🚨 For Advanced Users. No UI.

To create a new Proxmox Blocky LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/blocky-v4.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU ⚡

⚙️ Blocky Config Path

/opt/blocky/config.yml

Document - Notes
Paperless-ngx LXC

Paperless-ngx LXC

Paperless-ngx is a document management system that transforms your physical documents into a searchable online archive so you can keep, well, less paper.

To create a new Proxmox Paperless-ngx LXC, run the following in the Proxmox Shell.
To Update Paperless-ngx or Show Paperless-ngx Credentials, run the following in the LXC Console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/paperless-ngx-v5.sh)"

⚡ Default Settings: 2048MiB RAM - 4GB Storage - 2vCPU ⚡

Paperless-ngx Interface: IP:8000
Trilium LXC

Trilium LXC

Trilium is a hierarchical note taking application with focus on building large personal knowledge bases.

To create a new Proxmox Trilium LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/trilium-v4.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU ⚡

Trilium Interface: IP:8080

⚙️ To Update Trilium

Run in the LXC Console

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/trilium-update.sh)"

Wiki.js LXC

Wiki.js LXC

Wiki.js is a modern, lightweight and powerful wiki app built on NodeJS.

To create a new Proxmox Wiki.js LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/wikijs-v4.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU ⚡

Wiki.js Interface: IP:3000
NocoDB LXC

NocoDB LXC

NocoDB is an open source #NoCode platform that turns any database into a smart spreadsheet. Airtable Alternative.

To create a new Proxmox NocoDB LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/nocodb-v4.sh)"

⚡ Default Settings: 1GB RAM - 4GB Storage - 1vCPU ⚡

NocoDB Interface: IP:8080/dashboard

⚙️ To Update NocoDB

Run in the LXC console

cd /opt/nocodb && npm run upgrade

Dashboards
Heimdall Dashboard LXC

Heimdall Dashboard LXC

Heimdall Application Dashboard is a dashboard for all your web applications. It doesn't need to be limited to applications though, you can add links to anything you like.

To create a new Proxmox Heimdall Dashboard LXC, run the following in the Proxmox Shell.
To Update Heimdall Dashboard, run the following in the LXC Console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/heimdalldashboard-v5.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU ⚡

Heimdall Dashboard Interface: IP:7990
Homepage LXC

Homepage LXC

Homepage is a self-hosted dashboard.

To create a new Proxmox Homepage LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/homepage-v5.sh)"

⚡ Default Settings: 1GB RAM - 3GB Storage - 2vCPU ⚡

Configuration (bookmarks.yaml, services.yaml, widgets.yaml) path: /opt/homepage/config/

Homepage Interface: IP:3000

⚙️ To Update Homepage

Run in the LXC console

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/homepage-update.sh)"

Dashy LXC

Dashy LXC

Dashy helps you organize your self-hosted services by making them accessible from a single place

To create a new Proxmox Dashy LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/dashy-v4.sh)"

⚡ Default Settings: 2GB RAM - 3GB Storage - 2vCPU ⚡

Dashy Interface: IP:4000

After getting everything setup the way you want in interactive mode and saved to disk, you have to go into update configuration and rebuild application.

⚙️ To Update Dashy

Run in the LXC Console

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/dashy-update.sh)"

File - Code
File Browser

File Browser

File Browser is a create-your-own-cloud-kind of software where you can install it on a server, direct it to a path and then access your files through a nice web interface. Many available features!

To Install File Browser, ⚠️ run the following in the LXC console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/filebrowser.sh)"

File Browser Interface: IP:8080

⚙️ Initial Login

username admin

password changeme

⚙️ To Update File Browser

curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash

VS Code Server

VS Code Server

VS Code Server is a service you can run on a remote development machine, like your desktop PC or a virtual machine (VM). It allows you to securely connect to that remote machine from anywhere through a vscode.dev URL, without the requirement of SSH.

To Install VS Code Server, ⚠️ run the following in the LXC console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/code-server.sh)"

VS Code Server Interface: IP:8680
Webmin System Administration

Webmin System Administration

If you prefer to manage all aspects of your Proxmox LXC from a graphical interface instead of the command line interface, Webmin might be right for you. Benefits include automatic daily security updates, backup and restore, file manager with editor, web control panel, and preconfigured system monitoring with optional email alerts.

To Install Webmin System Administration (Screenshot), ⚠️ run the following in the LXC console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/webmin.sh)"

Webmin Interface: (https)IP:10000

⚙️ Initial Login

username root

password root

⚙️ To Update Webmin

Update from the Webmin UI

⚙️ To Uninstall Webmin

Run in the LXC console

bash /etc/webmin/uninstall.sh

Syncthing LXC

Syncthing LXC

Syncthing is a continuous file synchronization program. It synchronizes files between two or more computers.

To create a new Proxmox Syncthing LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/syncthing-v4.sh)"

⚡ Default Settings: 2GB RAM - 8GB Storage - 2vCPU ⚡

⚙️ For the initial start, run syncthing --gui-address=0.0.0.0:8384 in the LXC console, then go to the LXC IP:8384 In settings set the LXC IP address under the GUI (also set the GUI Authentication User and GUI Authentication Password) and Connections tab's and save. Reboot the LXC.

Syncthing Interface: IP:8384

⚙️ To Update Syncthing

apt update && apt upgrade -y

Daemon Sync Server LXC

Daemon Sync Server LXC

Sync files from app to server, share photos & videos, back up your data and stay secure inside local network.

To create a new Proxmox Daemon Sync Server LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/daemonsync-v4.sh)"

⚡ Default Settings: 512MiB RAM - 8GB Storage - 1vCPU ⚡

Daemon Sync Server Interface: IP:8084

Search: DAEMON Sync in your favorite app store
Misc.
Vaultwarden LXC

Vaultwarden LXC

Alternative implementation of the Bitwarden server API written in Rust and compatible with upstream Bitwarden clients, perfect for self-hosted deployment where running the official resource-heavy service might not be ideal.

To create a new Proxmox Vaultwarden LXC, run the following in the Proxmox Shell.
To Update Vaultwarden, Web-Vault or Show Admin Token, run the following in the LXC Console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/vaultwarden-v5.sh)"

⚠️ Vaultwarden needs to be behind a proxy (Nginx Proxy Manager) to obtain HTTPS and to allow clients to connect.

The script builds from source, which takes time and resources. After the build, the script will automatically set resources to Normal Settings.
⚡ Build Settings: 4GB RAM - 6GB Storage - 4vCPU ⚡
⚡ Normal Settings: 512Mib RAM - 6GB Storage - 1vCPU ⚡

Vaultwarden Interface: IP:8000

Vaultwarden Admin Interface: IP:8000/admin
grocy LXC

grocy LXC

grocy is a web-based self-hosted groceries & household management solution for your home.

To create a new Proxmox grocy LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/grocy-v4.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU ⚡

grocy Interface: IP

⚙️ Initial Login

username admin

password admin

⚙️ To Update grocy

Run in the LXC console

bash /var/www/html/update.sh

MagicMirror Server LXC

MagicMirror Server LXC

MagicMirror² is an open source modular smart mirror platform.

To create a new MagicMirror Server LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/magicmirror-v4.sh)"

⚡ Default Settings: 512MiB RAM - 3GB Storage - 1vCPU ⚡

MagicMirror Interface: IP:8080

⚙️ Configuration

/opt/magicmirror/config/config.js

⚙️ Update MagicMirror

Run in the LXC Console

cd /opt/magicmirror && git pull && npm install --only=prod --omit=dev

Whoogle LXC

Whoogle LXC

Get Google search results, but without any ads, javascript, AMP links, cookies, or IP address tracking.

To create a new Proxmox Whoogle LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/whoogle-v4.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU ⚡

Whoogle Interface: IP:5000

⚙️ To Update Whoogle

Run in the LXC console

pip3 install whoogle-search --upgrade

Shinobi NVR LXC

Shinobi NVR LXC

To create a new Proxmox Shinobi NVR LXC, run the following in the Proxmox Shell.
To Update Shinobi, run the following in the LXC Console.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/shinobi-v5.sh)"

⚡ Default Settings: 2GB RAM - 8GB Storage - 2vCPU ⚡

Shinobi Interface: IP:8080

Shinobi Admin Interface: IP:8080/super

⚙️ Initial Admin Login

username admin@shinobi.video

password admin
MotionEye NVR LXC

MotionEye NVR LXC

To create a new Proxmox MotionEye NVR LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/motioneye-v4.sh)"

⚡ Default Settings: 2GB RAM - 8GB Storage - 2vCPU ⚡

MotionEye Interface: IP:8765

⚙️ Initial Login

username admin

password

⚙️ To Update MotionEye

Run in the LXC console

pip install motioneye --upgrade

Hyperion LXC

Hyperion LXC

Hyperion is an opensource Ambient Lighting implementation. It supports many LED devices and video grabbers.

To create a new Proxmox Hyperion LXC, run the following in the Proxmox Shell.

bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/hyperion-v4.sh)"

⚡ Default Settings: 512MiB RAM - 2GB Storage - 1vCPU ⚡

Hyperion Interface: IP:8090

⚙️ To Update Hyperion

Run in the LXC console

apt update && apt upgrade -y
