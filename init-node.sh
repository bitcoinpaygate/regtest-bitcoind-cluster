#!/bin/bash
set -exm

export RPC_PORT=18443
export PORT=8443
export NODE_NAME="node"

mkdir $NODE_NAME

bitcoind -dns=0 -datadir=$NODE_NAME -rpcport=$RPC_PORT -port=$PORT -addnode=127.0.0.1:8444 -regtest=1 -printtoconsole -rpcallowip=0.0.0.0/0 -rpcpassword=password -rpcuser=user &

sleep 5

bitcoin-cli -rpcport=$RPC_PORT -regtest=1 -rpcpassword=password -rpcuser=user generate 432

fg