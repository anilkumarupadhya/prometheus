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



   for grafana 



   apt update -y
   52  sudo apt-get update
   53  sudo apt-get install -y apt-transport-https
   54  sudo apt-get install -y software-properties-common wget
   55  sudo wget -q -O /usr/share/keyrings/grafana.key https://apt.grafana.com/gpg.key
   56  echo "deb [signed-by=/usr/share/keyrings/grafana.key] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
   57  sudo apt-get update
   58  sudo apt-get install grafana
   59  ls
   60  sudo systemctl start grafana-server
   61  sudo systemctl status grafana-server

