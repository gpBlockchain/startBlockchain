git clone https://github.com/Officeyutong/ckb-light-client.git
cd ckb-light-client
git checkout support-sqlite
cargo build --release --no-default-features --features rusqlite
cp ../config.toml target/release/
