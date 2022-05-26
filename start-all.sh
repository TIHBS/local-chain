#! /bin/sh

_term() {
    echo "Caught SIGTERM signal!"
    kill -TERM "$bootnode" 2>/dev/null
    kill -TERM "$signer" 2>/dev/null
    kill -TERM "$api" 2>/dev/null
    echo \n
}

interface=$1
./start-bootnode.sh $interface &
bootnode=$!
sleep 2
./start-signer.sh &
signer=$!
./start-api.sh &
api=$!

wait "$bootnode" "$signer" "$api"
