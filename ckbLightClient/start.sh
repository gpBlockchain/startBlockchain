cd ckb-light-client/target/release
RUST_LOG=info,ckb_light_client=trace ./ckb-light-client run --config-file ./config.toml > node.log 2>&1 &
cd ../../../