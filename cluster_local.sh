### build dockerfile
docker build -t webbshi/evmosd .




rm -rf ./evmos-testnet-wb
./build/evmosd testnet init-files --v 8 -o ./evmos-testnet-tabi --keyring-backend=test --starting-ip-address 192.167.10.2