#!/bin/bash

iptables -A INPUT -m string --string "BitTorrent" --algo bm -j DROP
iptables -A INPUT -m string --string "BitTorrent protocol" --algo bm -j DROP
iptables -A INPUT -m string --string "peer_id=" --algo bm -j DROP
iptables -A INPUT -m string --string ".torrent" --algo bm -j DROP
iptables -A INPUT -m string --string "announce.php?passkey=" --algo bm -j DROP
iptables -A INPUT -m string --string "torrent" --algo bm -j DROP
iptables -A INPUT -m string --string "announce" --algo bm -j DROP
iptables -A INPUT -m string --string "info_hash" --algo bm -j DROP
iptables -A INPUT -m string --string "tracker" --algo bm -j DROP
iptables -A INPUT -m string --string "get_peers" --algo bm -j DROP
iptables -A INPUT -m string --string "announce_peer" --algo bm -j DROP
iptables -A INPUT -m string --string "find_node" --algo bm -j DROP
iptables -A INPUT -m string --algo bm --string "BitTorrent" -j DROP
iptables -A INPUT -m string --algo bm --string "BitTorrent protocol" -j DROP
iptables -A INPUT -m string --algo bm --string "peer_id=" -j DROP
iptables -A INPUT -m string --algo bm --string ".torrent" -j DROP
iptables -A INPUT -m string --algo bm --string "announce.php?passkey=" -j DROP
iptables -A INPUT -m string --algo bm --string "torrent" -j DROP
iptables -A INPUT -m string --algo bm --string "announce" -j DROP
iptables -A INPUT -m string --algo bm --string "info_hash" -j DROP
iptables -A INPUT -m string --algo bm --string "/default.ida?" -j DROP
iptables -A INPUT -m string --algo bm --string ".exe?/c+dir" -j DROP
iptables -A INPUT -m string --algo bm --string ".exe?/c_tftp" -j DROP
iptables -A INPUT -m string --string "peer_id" --algo kmp -j DROP
iptables -A INPUT -m string --string "BitTorrent" --algo kmp -j DROP
iptables -A INPUT -m string --string "BitTorrent protocol" --algo kmp -j DROP
iptables -A INPUT -m string --string "bittorrent-announce" --algo kmp -j DROP
iptables -A INPUT -m string --string "announce.php?passkey=" --algo kmp -j DROP
iptables -A INPUT -m string --string "find_node" --algo kmp -j DROP
iptables -A INPUT -m string --string "info_hash" --algo kmp -j DROP
iptables -A INPUT -m string --string "get_peers" --algo kmp -j DROP
iptables -A INPUT -m string --string "announce" --algo kmp -j DROP
iptables -A INPUT -m string --string "announce_peers" --algo kmp -j DROP 
iptables -A INPUT -p tcp -m tcp --dport 25 -j DROP
iptables -A INPUT -p udp -m tcp --dport 25 -j DROP
