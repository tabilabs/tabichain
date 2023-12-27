## start the cluster

```shell
docker build -t webbshi/evmosd .
```

```shell
rm -rf ./chainData/evmostabi
```

```shell
./build/evmosd testnet init-files --v 8 -o ./chainData/evmostabi --keyring-backend=test --starting-ip-address 192.167.10.2 --chain-id evmos_9000-1
```

change the profile:
```shell

```

```shell
docker-compose -f docker-tabi.yml up -d
```

```shell
docker-compose -f docker-tabi-unsafe-reset-all.yml up -d
```
