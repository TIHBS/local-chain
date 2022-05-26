#! /bin/sh

rm -rf api/geth      
rm -rf signer/geth    
rm -rf bootnode/geth

geth init --datadir api genesis.json
geth init --datadir signer genesis.json
geth init --datadir bootnode genesis.json
