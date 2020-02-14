# regtest-bitcoind-cluster


## Running

Supported versions are:
```
0.16.3
0.17.1
0.18.1
0.19.0.1
```

```bash
docker run -p 18444:18444 -p 18443:18443 --rm bitcoinpaygate/regtest-bitcoind-cluster:VERSION
```


### Building

Build docker image:
 
```bash
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
docker build . -t bitcoinpaygate/regtest-bitcoind-cluster:$BRANCH
```

Push to docker hub:

```bash
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
docker push bitcoinpaygate/regtest-bitcoind-cluster:$BRANCH
```

Both in one go:
```bash
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
docker build . -t bitcoinpaygate/regtest-bitcoind-cluster:$BRANCH && \
docker push bitcoinpaygate/regtest-bitcoind-cluster:$BRANCH
```