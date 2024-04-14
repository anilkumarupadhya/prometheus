chmod +x install_prometheus.sh
./install_prometheus.sh

and for node expoeter 

sudo apt update
   36  nano node-exporter.sh

#!/bin/bash
sudo apt-get update
sudo apt-get install prometheus-node-exporter -y
sudo systemctl status prometheus-node-exporter


   37  sudo chmod +x node-exporter.sh
   38  sudo sh node-exporter.sh
