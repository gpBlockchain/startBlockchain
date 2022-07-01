pkill geth
mv gethdata/genesis.json genesis.json
rm -rf gethdata/*
mv genesis.json gethdata/genesis.json
