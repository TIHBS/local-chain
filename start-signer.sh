#! /bin/sh

record=$(./get-node-record.sh)
geth --datadir signer --networkid 57771 --port 30304 --bootnodes $record --unlock 0x14ef5f7ad517e2be0f1c3159e83cc393c588e541 --mine 
