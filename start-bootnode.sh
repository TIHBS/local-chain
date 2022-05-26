#! /bin/sh

interface=$1
ip=$(ifconfig $interface | awk -F ' *|:' '/inet /{print $3}')

geth --datadir bootnode --networkid 57771 --nat extip:$ip
