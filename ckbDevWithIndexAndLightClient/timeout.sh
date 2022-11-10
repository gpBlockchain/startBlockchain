echo "time out"

if echo "$1" | grep -Eq '^[0-9]+'; then
    time=$1
    shift && cmd="$@"
else
    time=5
    cmd="$@"
fi

$cmd &
pid=$!

while kill -0 $pid &>/dev/null; do
    sleep 1
    time=$[ time-1 ]
    if [ "$time" = "0" ]; then
        echo "kill pid:"$pid
        kill -9 $pid &>/dev/null
        wait $pid &>/dev/null
    fi
done
