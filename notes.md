## Initial setup:

### Install

> `yarn add hardhat @nomiclabs/hardhat-waffle ethereum-waffle chai @nomiclabs/hardhat-ethers ethers`

### Compile the contract

> `npx hardhat compile`

Running this commands gives us:

1 - The "artifacts" folder, which has the ABI, (application binary interface). Everyone that wants to interact with our contract needs to know this information. (kinda like a yaml doc for rest apis).

2 - The code we will deploy whenever we want to.

### Run the sample-script

> `npx hardhat run scripts/sample-script.js --network localhost` 

### Run the console

> `npx hardhat run console --network localhost`
Sin --network localhost levanta una nueva blockchain

```
  const Greeter = await hre.ethers.getContractFactory("Greeter");
  // connect to this contract in particular (contractAddress)
  const contractAddress = "0xe00...etc";
  // greeter is a particular instance of the contract
  const greeter = await Greeter.attach(contractAddress);
```

