# clone ckb
# clone ckbIndex
# clone ckb -light client
git clone -b v0.105.1-rc2 https://github.com/nervosnetwork/ckb.git
git clone https://github.com/nervosnetwork/ckb-indexer.git
git clone https://github.com/nervosnetwork/ckb-light-client.git
cd ckb
make build
cd ../ckb-indexer
cargo build --release
cd ../ckb-light-client
cargo build --release
