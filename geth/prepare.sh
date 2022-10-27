# download some
git clone -b v1.10.25 https://github.com/ethereum/go-ethereum.git
# tar -zxvf geth-darwin-amd64-1.10.21-unstable-ae8ce720.tar.gz
cd go-ethereum
make geth
sudo cp build/bin/geth /usr/local/bin/geth
