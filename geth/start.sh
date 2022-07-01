#  download geth

# prepare env
geth --datadir  gethdata  init  gethdata/genesis.json

#start local eth
cd gethdata
nohup geth  --rpc  --rpccorsdomain "*" --datadir "./" --port 30304 --rpcapi "db,eth,net,web3,personal,web3,miner" --networkid 81888 --rpcport 8545 --rpcaddr "0.0.0.0" --allow-insecure-unlock  > ./geth.log &2>1
sleep 10
expect << EOF
spawn geth attach http://localhost:8545
expect "> " { send "miner.setEtherbase('0xa0Ee7A142d267C1f36714E4a8F75612F20a79720')\r" }
expect "> " { send "miner.start(1)\r" }
expect "> " { send "exit\r" }
EOF
curl --location --request POST 'localhost:8545/'  --header 'Content-Type: application/json'  --data-raw '{	"jsonrpc":"2.0",	"method":"eth_blockNumber",	"params":[],	"id":73}'
sleep 10
curl --location --request POST 'localhost:8545/'  --header 'Content-Type: application/json'  --data-raw '{	"jsonrpc":"2.0",	"method":"eth_blockNumber",	"params":[],	"id":73}'
