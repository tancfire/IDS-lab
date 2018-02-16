#nmcli radio wifi off
#rfkill unblock wlan

#ifconfig wlx0013ef90152e 10.0.0.1
dnsmasq -C dnsmasq.conf -d &
#hostapd ./hostapd.conf &
sysctl -w net.ipv4.ip_forward=1
iptables -P FORWARD ACCEPT
iptables -t nat -A POSTROUTING -o eno1 -j MASQUERADE
hostapd ./hostapd.conf

#nodejs web/t411/test.js
