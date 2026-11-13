#!/bin/bash

read -p "Enter the port number: " port_number
read -p "Enter the path to index.html: " html_path

if [ ! -f "$html_path" ]; then
  echo "Error: File not found at '$html_path'"
  exit 1
fi

echo "Serving $html_path on port $port_number..."

while true; do
  {
    echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n"
    cat "$html_path"
  } | nc -l -p "$port_number" -q 1
done
