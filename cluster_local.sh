### build dockerfile
# docker build -t webbshi/evmosd .

rm -rf ./build/evmos-testnet-wb
rm -rf ./chainData/evmostabi
./build/evmosd testnet init-files --v 8 -o ./chainData/evmostabi --keyring-backend=test --starting-ip-address 192.167.10.2 --chain-id evmos_9000-1

  for i in {0..7}; do
    APP_TOML="./chainData/evmostabi/node$i/evmosd/config/app.toml"
    if [[ "$OSTYPE" == "darwin"* ]]; then
        sed -i '' 's/127.0.0.1/0.0.0.0/g' "$APP_TOML"
    else
        sed -i 's/127.0.0.1/0.0.0.0/g' "$APP_TOML"
    fi
  done