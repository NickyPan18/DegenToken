# ETH-AVAX Module 4 Project Degen Token


## Description

In this project I deploy my smart contract which uses ERC20 to the Snowtrace testnet, as well as perform some contract functions that can be viewed on the Snowtrace testnet here: https://testnet.snowtrace.io/address/0x4ca35f9cec05367f20b6bf8632abf9bbd1ad8e03#loaded. The specific functions within the contract allow for the following: burn, mint, transfer tokens, view store, view token balance, and redeem tokens. Burning tokens removes the tokens from existence, users may only burn tokens from their own account. Minting tokens creates new tokens, this can only be performed by the contract owner, but new tokens can be minted into any account. Transferring tokens sends tokens from one address to another. Viewing the shop allows for the game store items and their prices to be viewed. View token balance allows for the user's token balance to be viewed. Redeeming tokens redeems the user's tokens for store items. The redeemed tokens are sent to the contract owner's address.

## Getting Started

### Installing

You can download my project files directly from GitHub by clicking on the download files button on the upper right. If you intend to run this project via HardHat on GitPod, you will need to follow the HardHat instructions below. If you intend to run this project via Remix IDE, follow their respective instructions.
It is assumed that in running this project you already have a Metamask account, and that you have testnet AVAX. In case you do not have testnet AVAX already, you can acquire some here on this site: https://core.app/tools/testnet-faucet/ 
In my Loom demonstration, I deployed the project using Remix IDE as seen here: https://www.loom.com/share/302af5bb3fd44038906b8d6dbd070150?sid=fbd198e0-cf99-4d8f-b879-9768b1651169.

## Executing program

### How to deploy the contract via HardHat
* Open the project with GitPod.
* Ensure that you adjust the variables in your hardhat.config.js file to your account's private key and your API key.
* In the terminal, follow the commands below: 

```
npm init -y
```
* Install HardHat
```
npm install --save-dev hardhat
```
* Run HardHat
```
npx hardhat
```
* Deploy contract on testnet, a successful deployment will output the contract address.
```
npx hardhat run scripts/deploy.js --network fuji
```
* Verify contract has been deployed
```
npx hardhat verify <YOUR TOKEN ADDRESS> --network fuji
```
* Completing this will have successfully deployed the contract on the testnet

### How to deploy the contract via Remix IDE
* Download the DegenToken.sol file.
* Open Remix IDE: https://remix.ethereum.org/
* Upload the .sol file.
* Ensure that your Metamask is currently connected to the Fuji server.
* Set the environment to "Injected Network - Metamask".
* Manually connect your Metamask account.
* Press "Deploy".
* This should successfully deploy the contract on the testnet. The contract address will be outputted in the terminal.
* From the Remix IDE, you should be able to perform transactions using the contract functions. Transactions performed on the testnet will appear at the contract address on the Snowtrace testnet.

## Help
* If you are unable to deploy the contract or perform transactions, check that you are 1) connected to the correct network, 2) have sufficient AVAX, and 3) are using the correct address. For further concerns, refer to the official Solidity documentation or seek assistance from the Ethereum community forums.

## Authors
* Nicola Ryel Pangilagan
