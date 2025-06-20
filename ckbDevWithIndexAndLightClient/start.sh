set +x
cd ckb/target/release
if [ ! -d "dev" ]; then
  ./ckb init --chain dev -C dev
  sleep 1
fi
cp ../../../ckb.toml dev/ckb.toml
cp ../../../ckb-miner.toml dev/ckb-miner.toml
sleep 1
./ckb run -C dev > dev.log 2>&1 &
#./ckb miner -C dev > miner.log 2>&1 &
sleep 3
cat dev.log
curl --location --request POST 'localhost:8114/' --header 'Content-Type: application/json' --data-raw '{  "jsonrpc":"2.0",  "method":"get_tip_header", "params":[],  "id":64}'
echo "start ckb successful"
cd ../../../
node_id=`curl http://localhost:8114/ -X POST -H "Content-Type: application/json" -d '{"jsonrpc": "2.0", "method":"local_node_info", "params": [], "id": 1}' | jq -r '.result.node_id'`
echo "nodeId:"$node_id
cp config.toml config.new.toml
sleep 1
sed -i -e "s/need-replace-boot-node-id/${node_id}/g" config.new.toml
cat config.new.toml | grep $node_id
cp config.new.toml ckb-light-client/target/release/config.toml
cd  ckb-light-client/target/release
RUST_LOG=info,ckb_light_client=trace ./ckb-light-client run --config-file ./config.toml > node.log 2>&1 &
