## Features
* Create an STA (Station) at any channel.
* Choose one of the following encryptions: WPA, WPA2, WPA/WPA2, Open, WEP.
* Choose one of the foloowing WPA pairwise: TKIP, CCMP, CCMP/TKIP
* Choose one of the foloowing WPA group: TKIP, CCMP, CCMP/TKIP
* Connect to hide your SSID.


## Dependencies
### General
* bash (to run this script)
* util-linux (for getopt)
* procps or procps-ng
* wpa_supplicant
* dhclient
* iw
* iwconfig (you only need this if 'iw' can not recognize your adapter)
* haveged (optional)


## Installation
### Generic
    git clone https://github.com/verifsec/create_sta
    cd create_sta
    make install

## Examples
### No passphrase (open network):
    create_sta wlan0 MyAccessPoint

### WEP key:
    create_sta --wep wlan0 MyAccessPoint MyPassPhrase

### WPA + WPA2 passphrase:
    create_sta -w 1+2 --pair CCMP+TKIP --group CCMP+TKIP wlan0 MyAccessPoint MyPassPhrase

### WPA-TKIP:
    create_sta -w 1 --pair TKIP --group TKIP wlan0 MyAccessPoint MyPassPhrase
    (Note: Realtek drivers usually have problems with WPA1, forcing WPA2)

### WPA-CCMP:
    create_sta -w 1 --pair CCMP --group CCMP wlan0 MyAccessPoint MyPassPhrase

### WPA-CCMP/TKIP:
    create_sta -w 1 --pair CCMP --group TKIP wlan0 MyAccessPoint MyPassPhrase

### WPA2-TKIP:
    create_sta -w 2 --pair TKIP --group TKIP wlan0 MyAccessPoint MyPassPhrase

### WPA2-CCMP:
    create_sta -w 2 --pair CCMP --group CCMP wlan0 MyAccessPoint MyPassPhrase

### WPA2-CCMP/TKIP:
    create_sta -w 2 --pair CCMP --group TKIP wlan0 MyAccessPoint MyPassPhrase

### USE SUPPLICANT_CONF:
    create_sta -c /path/to/wpa_supplicant.conf wlan0 MyAccessPoint

### USE DHCP:
    create_sta -w 1+2 --pair CCMP+TKIP --group CCMP+TKIP --dhcp wlan0 MyAccessPoint MyPassPhrase



## License
FreeBSD
