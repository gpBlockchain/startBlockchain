cd axon
./target/debug/axon --config devtools/chain/config.toml --genesis devtools/chain/genesis_single_node.json > /tmp/log 2>&1 &
cd ../