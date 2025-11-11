#!/bin/bash

wifi_dev=$(cat /proc/net/wireless | perl -ne '/(\w+):/ && print $1')
ssid="La plage"
password="Vamosalaplaya"

nmcli device wifi connect "La plage" password "$password"

dhclient
