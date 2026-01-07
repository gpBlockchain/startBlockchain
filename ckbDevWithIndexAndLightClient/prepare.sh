# clone ckb
# clone ckbIndex
# clone ckb -light client
git clone https://github.com/nervosnetwork/ckb.git
git clone https://github.com/Officeyutong/ckb-light-client.git
cd ckb
make build
cd ../ckb-light-client
git checkout support-sqlite
cargo build --release --no-default-features --features rusqlite
