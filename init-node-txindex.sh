#!/bin/bash
set -exm

export RPC_PORT=18444
export PORT=8444
export NODE_NAME="node_txindex"

mkdir $NODE_NAME

bitcoind -dns=0 -datadir=$NODE_NAME -rpcport=$RPC_PORT -port=$PORT -addnode=127.0.0.1:8443 -regtest=1 -printtoconsole -rpcallowip=0.0.0.0/0 -rpcpassword=password -rpcuser=user -txindex=1 &

sleep 5