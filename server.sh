echo "welcome to BBash!"
read -p "Enter the port number: " port_number
python3 -m http.server $port_number
echo "Server started on port $port_number"


