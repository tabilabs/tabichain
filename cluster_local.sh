### build dockerfile
# docker build -t webbshi/evmosd .




rm -rf ./build/evmos-testnet-wb
./build/evmosd testnet init-files --v 8 -o /data/evmostabi --keyring-backend=test --starting-ip-address 192.167.10.2 --chain-id evmos_9000-1