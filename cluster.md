## start the cluster

```shell
make build
```

```shell
docker build -t webbshi/evmosd .
```

```shell
rm -rf ./chainData/evmostabi
```

### generate the config

change the profile:
```shell
./cluster_local.sh
```

### reset the config

by this way, we could use the previous config.

```shell
docker-compose -f docker-tabi.yml up -d
```

```shell
docker-compose -f docker-tabi.yml down
./clean_data.sh
```

```shell
docker-compose -f docker-tabi-unsafe-reset-all.yml up -d
```

地址解析工具
```shell
./evmosd keys parse F57320099B32FA520CCAE9C49BB60FFAD6B9526D

./evmosd keys parse evmos174ejqzvmxta9yrx2a8zfhds0ltttj5nde67a4p

./evmosd keys parse evmosvalcons174ejqzvmxta9yrx2a8zfhds0ltttj5ndq8z3ca
```

### key-manangement
私钥位置
```shell

cat key_seed.json

evmosd keys add dev0-restored --recover
> Enter your bip39 mnemonic
merry shell hire rug film love kidney salad crack direct man medal stock transfer present unhappy bargain layer barrel parrot engine swing price napkin

- address: evmos1y7pandy778avunh9244309sevk38yy3pttkrkv
  name: dev0-restored
  pubkey: '{"@type":"/ethermint.crypto.v1.ethsecp256k1.PubKey","key":"A/zI+d7mrTFd81ekBUT73vTy4GZH2BithIPRAQC4atzO"}'
  type: local
  
evmosd keys parse evmos1y7pandy778avunh9244309sevk38yy3pttkrkv


cast bn --rpc-url http://localhost:8545

cast balance 0x2783D9B49EF1FACE4EE5556B17961965A2721221 --rpc-url http://localhost:8545
```

### 助记词
助记词 转 私钥： https://bip39.tools/
caution： 不要用于自己的实际钱包中。