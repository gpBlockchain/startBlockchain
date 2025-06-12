git clone https://github.com/nervosnetwork/ckb-light-client.git
cd ckb-light-client
git checkout update-fee-rate-checker
cargo build --release
cp ../config.toml target/release/
