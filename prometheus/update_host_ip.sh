#!/bin/bash

# Update the local ip address in prometheus.yml file


IP="$(hostname -I | cut -d' ' -f1)"

echo "Updating DM ip address in prometheus.yml :[ $IP ]"

sed -i "s/DM-IP/$IP/g" /home/roche/data/x800dm/dm-monitoring/prometheus/prometheus.yml

echo "Setting DM ip address in alert configuration : [ $IP ]"

sed -i "s/DM-IP/$IP/g" /home/roche/data/x800dm/dm-monitoring/alertmanager/config.yml
