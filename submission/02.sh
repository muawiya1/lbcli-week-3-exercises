# Create a native segwit address and get the public key from the address.
segwit_addr=$(bitcoin-cli -regtest getnewaddress "" "bech32")
pubkey=$(bitcoin-cli -regtest getaddressinfo $segwit_addr | jq -r '.pubkey')
echo $pubkey