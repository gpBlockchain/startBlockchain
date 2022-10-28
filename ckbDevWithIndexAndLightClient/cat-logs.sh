#osascript split.osascript "id1" "echo hh"
#osascript -e 'tell application \"Terminal\" to do script "sh hell.sh"'
path=`pwd`
osascript -e "tell application \"Terminal\" to do script \"cd ${path}/ckb/target/release/ && tail -f dev.log\""
osascript -e "tell application \"Terminal\" to do script \"cd ${path}/ckb-indexer/target/release && tail -f ckb-indexer.log\""
osascript -e "tell application \"Terminal\" to do script \"cd ${path}/ckb-light-client/target/release && tail -f node.log\""
