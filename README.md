
Very simple script for protection DDoS attacks.
 

DoS Deflate is a lightweight bash shell script designed to assist in the process of blocking a denial of service attack. It utilizes the command below to create a list of IP addresses connected to the server, along with their total number of connections. It is one of the simplest and easiest to install solutions at the software level.

netstat -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n
IP addresses with over a pre-configured number of connections are automatically blocked in the server's firewall, which can be direct iptables or Advanced Policy Firewall (APF). (We highly recommend that you use APF on your server in general, but deflate will work without it.)

Notable Features
It is possible to whitelist IP addresses, via /usr/local/ddos/ignore.ip.list.
Simple configuration file: /usr/local/ddos/ddos.conf
IP addresses are automatically unblocked after a preconfigured time limit (default: 600 seconds)
The script can run at a chosen frequency via the configuration file (default: 1 minute)
You can receive email alerts when IP addresses are blocked.

Installation

wget https://raw.githubusercontent.com/alvarezallen99/ddos/master/install.sh

chmod 0700 install.sh

./install.sh


#Uninstallation


wget https://raw.githubusercontent.com/alvarezallen99/ddos/master/uninstall.ddos

chmod 0700 uninstall.ddos

./uninstall.ddos

Original Source from https://antiddos.eu/en/news/item/20
