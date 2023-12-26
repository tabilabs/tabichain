### build dockerfile
# docker build -t webbshi/evmosd .




rm -rf ./build/evmos-testnet-wb
./build/evmosd testnet init-files --v 8 -o ./build/evmostabi --keyring-backend=test --starting-ip-address 192.167.10.2 --chain-id 9000