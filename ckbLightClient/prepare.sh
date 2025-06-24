git clone https://github.com/nervosnetwork/ckb-light-client.git
cd ckb-light-client
git checkout fix-panic-of-holding-matched_blocks
cargo build --release
cp ../config.toml target/release/
