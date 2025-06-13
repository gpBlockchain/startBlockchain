cd ckb/target/release
./ckb run -C dev > dev.log 2>&1 &
cd ../../../ckb-light-client/target/release
RUST_LOG=info,ckb_light_client=trace ./ckb-light-client run --config-file ./config.toml > node.log 2>&1 &

