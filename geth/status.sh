set -x
curl --location --request POST 'localhost:8545/'  --header 'Content-Type: application/json'  --data-raw '{	"jsonrpc":"2.0",	"method":"eth_blockNumber",	"params":[],	"id":73}'
sleep 10
curl --location --request POST 'localhost:8545/'  --header 'Content-Type: application/json'  --data-raw '{	"jsonrpc":"2.0",	"method":"eth_blockNumber",	"params":[],	"id":73}'
