echo "set scripts"


echo "get network"
timeout=3600
br=$(ip addr | awk -F ":" '/^[0-9]+:/ { iface=$2; } /inet.192.168.5*/ { print iface; exit; }')
sudo  chaosblade-1.7.0/blade create network loss --percent 50 --interface ${br} --timeout ${timeout}
br=$(ip addr | awk -F ":" '/^[0-9]+:/ { iface=$2; } /inet.192.168.6*/ { print iface; exit; }')
sudo  chaosblade-1.7.0/blade create network loss --percent 50 --interface ${br} --timeout ${timeout}


