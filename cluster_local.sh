### build dockerfile
# docker build -t webbshi/evmosd .

rm -rf ./build/evmos-testnet-wb
rm -rf ./chainData/evmostabi
./build/evmosd testnet init-files --v 8 -o ./chainData/evmostabi --keyring-backend=test --starting-ip-address 192.167.10.2 --chain-id evmos_9000-1

  for i in {0..7}; do
    APP_TOML="./chainData/evmostabi/node$i/evmosd/config/app.toml"
    GENESIS="./chainData/evmostabi/node$i/evmosd/config/genesis.json"
    TMP_GENESIS="./chainData/evmostabi/node$i/evmosd/config/tmp_genesis.json"
    DATADIR="./chainData/evmostabi/node$i/evmosd/data"

  	# Set gas limit in genesis
	  jq '.consensus_params["block"]["max_gas"]="30000000"' "$GENESIS" >"$TMP_GENESIS" && mv "$TMP_GENESIS" "$GENESIS"

    if [[ "$OSTYPE" == "darwin"* ]]; then
        sed -i '' 's/127.0.0.1/0.0.0.0/g' "$APP_TOML"
    else
        sed -i 's/127.0.0.1/0.0.0.0/g' "$APP_TOML"
    fi
    rm -rf $DATADIR
    mkdir -p $DATADIR
    cp ./priv_validator_state.json $DATADIR
  done