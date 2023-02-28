echo "set scripts"
curl --location --request POST 'http://127.0.0.1:8122' --header 'Content-Type: application/json' --data-raw '{  "jsonrpc":"2.0",  "method":"set_scripts",  "params":[[{"script":{"code_hash":"0x9bd7e06f3ecf4be0f2fcd2188b23f1b9fcc88e5d4b65a8637b17723bbda3cce8","hash_type":"type","args":"0xc93777a8f275fb6990dec7895efb9d207227ab2f"},"script_type":"lock","block_number":"0x0"},{"script":{"code_hash":"0x9bd7e06f3ecf4be0f2fcd2188b23f1b9fcc88e5d4b65a8637b17723bbda3cce8","hash_type":"type","args":"0x70dd447182cb7e9f78f10e231376130700209a32"},"script_type":"lock","block_number":"0x0"},{"script":{"code_hash":"0x9bd7e06f3ecf4be0f2fcd2188b23f1b9fcc88e5d4b65a8637b17723bbda3cce8","hash_type":"type","args":"0xda648442dbb7347e467d1d09da13e5cd3a0ef0e1"},"script_type":"lock","block_number":"0x0"}],"all"],  "id":64}'
curl --location --request POST 'http://127.0.0.1:8123' --header 'Content-Type: application/json' --data-raw '{  "jsonrpc":"2.0",  "method":"set_scripts",  "params":[[{"script":{"code_hash":"0x9bd7e06f3ecf4be0f2fcd2188b23f1b9fcc88e5d4b65a8637b17723bbda3cce8","hash_type":"type","args":"0xc93777a8f275fb6990dec7895efb9d207227ab2f"},"script_type":"lock","block_number":"0x0"},{"script":{"code_hash":"0x9bd7e06f3ecf4be0f2fcd2188b23f1b9fcc88e5d4b65a8637b17723bbda3cce8","hash_type":"type","args":"0x70dd447182cb7e9f78f10e231376130700209a32"},"script_type":"lock","block_number":"0x0"},{"script":{"code_hash":"0x9bd7e06f3ecf4be0f2fcd2188b23f1b9fcc88e5d4b65a8637b17723bbda3cce8","hash_type":"type","args":"0xda648442dbb7347e467d1d09da13e5cd3a0ef0e1"},"script_type":"lock","block_number":"0x0"}],"all"],  "id":64}'
echo "get network"
timeout=3600
br=$(ip addr | awk -F ":" '/^[0-9]+:/ { iface=$2; } /inet.192.168.5*/ { print iface; exit; }')
sudo  chaosblade-1.7.0/blade create network loss --percent 50 --interface ${br} --timeout ${timeout}
br=$(ip addr | awk -F ":" '/^[0-9]+:/ { iface=$2; } /inet.192.168.6*/ { print iface; exit; }')
sudo  chaosblade-1.7.0/blade create network loss --percent 80 --interface ${br} --timeout ${timeout}


