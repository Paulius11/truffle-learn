# Truffle starter


# A Simple Store Contract

This project is an example of the familiar SimpleStore Smart Contract that we can use for learning basic concepts of programming the Ethereum Blockchain.

## Testing in Ropsten

* Ether can be requested from a faucet. Try these:

  - https://ipfs.io/ipfs/QmVAwVKys271P5EQyEfVSxm7BJDKWt42A2gHvNmxLjZMps/
  - https://faucet.ropsten.be/
  - https://faucet.metamask.io/
  - https://faucet.bitfwd.xyz/
  - https://faucet.kyber.network/

## Truffle
```
$ truffle console
$ truffle console --network ropsten
accounts # displays accounts
```

## NPM
```
$ npm i -g truffle  
$ npm install
```

## ./.env file

https://infura.io/ 
```
INFURA_API_KEY=""
MNEMONIC=""
```


# web3

### Get balance
```
$ web3.eth.getBalance(accounts[0]) 
1000000000000000000'
```

#### Converting to ETH
```
$ 1000000000000000000 / 1e18
```



 # Deploying
 ```
 $ truffle console --network ropsten
 migrate
 ```

```
$ truffle migrate --network ropsten
```

# Deployed ropsten test contract 

https://ropsten.etherscan.io/address/0xf83a33af55c6a3eff8305440ae6d1d6f80f9a1a9#code

`
0xf83A33AF55C6a3EFF8305440ae6d1D6f80F9A1a9
`

# Interacting with contracts
 ```
 $ truffle console 
 networks

Lottery.deployed().then( (instance) => {app = instance})
let app = await MetaCoin.deployed()
app.manager()
'0xffB4...'

app.enter({from: accounts[0], value: web3.utils.toWei('0.02', 'ether')} );
app.getPlayers() // Sender account is added to a list

 ```
# Units

https://eth-converter.com/

`
uint8 = 2 ** 8 = 255
`

`
1 GWei = 0.000000001 Ether
4 GWei = 4000000000 Wei
`
