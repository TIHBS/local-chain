#! /bin/sh

record=$(geth attach bootnode/geth.ipc --exec admin.nodeInfo.enr)

echo $record | sed 's/"//g'
