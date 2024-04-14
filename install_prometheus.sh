#!/bin/bash

# Function to install Prometheus
install_prometheus() {
    echo "Installing Prometheus..."
    
    # Download Prometheus binary
    wget -qO prometheus.tar.gz https://github.com/prometheus/prometheus/releases/download/v2.30.3/prometheus-2.30.3.linux-amd64.tar.gz
    
    # Extract files
    tar xzf prometheus.tar.gz
    
    # Move Prometheus binaries to /usr/local/bin
    sudo cp prometheus-2.30.3.linux-amd64/prometheus /usr/local/bin/
    sudo cp prometheus-2.30.3.linux-amd64/promtool /usr/local/bin/

    # Cleanup
    rm -rf prometheus.tar.gz prometheus-2.30.3.linux-amd64/

    echo "Prometheus installed successfully."
}

# Function to start Prometheus server
start_prometheus() {
    echo "Starting Prometheus server..."
    prometheus --config.file=prometheus.yml &
    echo "Prometheus server started. Access it at http://localhost:9090"
}

# Main function
main() {
    install_prometheus
    start_prometheus
}

main

