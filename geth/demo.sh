expect << EOF
spawn geth attach http://localhost:8545
expect "> " { send "miner.setEtherbase('0xa0Ee7A142d267C1f36714E4a8F75612F20a79720')\r" }
expect "> " { send "miner.start(1)\r" }
expect "> " { send "exit\r" }
EOF
sleep 10