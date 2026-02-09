CKB_LIGHT_CLIENT_URL=${CKB_LIGHT_CLIENT_URL:-https://github.com/nervosnetwork/ckb-light-client.git}
CKB_LIGHT_CLIENT_BRANCH=${CKB_LIGHT_CLIENT_BRANCH:-develop}
git clone ${CKB_LIGHT_CLIENT_URL}
cd ckb-light-client
git checkout ${CKB_LIGHT_CLIENT_BRANCH}
if [ -n "$RUSQLITE" ]; then
    cargo build --release --no-default-features --features sqlite
else
    cargo build --release
fi
cp ../config.toml target/release/
