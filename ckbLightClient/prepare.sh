git clone https://github.com/Officeyutong/ckb-light-client.git
cd ckb-light-client
git checkout wasm-support-with-sync-indexeddb
cargo build --release
cp ../config.toml target/release/
