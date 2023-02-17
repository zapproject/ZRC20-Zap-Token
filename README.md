# erc20 cairo

```bash
export STARKNET_WALLET=starkware.starknet.wallets.open_zeppelin.OpenZeppelinAccount
export STARKNET_NETWORK=alpha-goerli                                                                           
apt install -y libgmp3-dev
mkdir cairo-project
cd cairo-project
python3 -m venv env
source env/bin/activate

pip install cairo-nile openzeppelin-cairo-contracts
echo "%lang starknet" >> erc20.cairo
echo "from openzeppelin.token.erc20.presets.ERC20 import constructor" >> erc20.cairo


(cairo) starknet-compile erc20.cairo --output=erc20.output.json --abi erc20.abi.json

(cairo) starknet declare --contract erc20.output.json                               
Sending the transaction with max_fee: 0.000000 ETH (7809421242 WEI).
Declare transaction was sent.
Contract class hash: 0x1e1f6acc386e32abbde3617266c74071746cc1c3b37f08a4a54b9e7eae24ef3
Transaction hash: 0x287ca3b6ebd914e81c7dcf4ff785cd1f8becd12bdf688dc0f3e95a363a490f4


```
