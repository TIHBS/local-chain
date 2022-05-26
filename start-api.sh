#! /bin/sh

record=$(./get-node-record.sh)
geth --datadir api --networkid 57771 --port 30305 --bootnodes $record --http.corsdomain '*' --http --http.api personal,eth,net,web3 
