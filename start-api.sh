#! /bin/sh

record=$(./get-node-record.sh)
geth --datadir api --networkid 57771 --port 30305 --bootnodes $record --allow-insecure-unlock --unlock 0x250548444A4fBcFfb273B1034aa32cD6828544b0 --password super-secret-password --http.corsdomain '*' --http --http.api personal,eth,net,web3 
