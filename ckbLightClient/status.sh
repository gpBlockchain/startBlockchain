set -x
curl http://localhost:9000/ -X POST -H "Content-Type: application/json" -d '{"jsonrpc": "2.0", "method": "get_tip_header", "params": [], "id": 1}'
sleep 10
curl http://localhost:9000/ -X POST -H "Content-Type: application/json" -d '{"jsonrpc": "2.0", "method": "get_tip_header", "params": [], "id": 1}'
