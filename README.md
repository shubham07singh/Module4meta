# Module4meta

# Degen Token (DGN)

## Overview
Degen Token is an ERC-20 based token written in Solidity. It provides standard ERC-20 functionality as well as additional features related to item management.

## Features

- **Standard ERC-20 Functions**: The contract provides standard ERC-20 functionalities such as checking balance, transferring tokens, and checking the total supply.
- **Owner-Only Functions**: Some functions such as token minting, burning and item addition are restricted to the owner only for security purposes.
- **Item Management**: The contract allows the owner to add items that users can redeem using the Degen tokens. Each item has an ID, a name and a price associated with it.
Table of Contents
Introduction
Token Details
Smart Contract
Functionalities
License
Introduction
Degen (DGN) is an ERC-20 compliant token built on the Ethereum blockchain. The token provides a simple implementation of a standard ERC-20 token with additional functionalities to manage and redeem items associated with the token.

Token Details
Name: Degen
Symbol: DGN
Decimals: 0
## Usage

### Installation
To interact with the contract, you need to install the required development dependencies. You should have a development environment set up for Ethereum contracts (like Truffle).

### Contract Functions
#### Minting
The owner can mint tokens by calling `mint(address receiver, uint amount)`.

#### Burning
Any token holder can burn their tokens by calling `burn(uint amount)`.

#### Transferring
Tokens can be transferred by calling `transfer(address recipient, uint amount)`.

#### Adding Items
The owner can add items that can be redeemed using tokens by calling `addItem(string memory itemName, uint256 itemPrice)`.

#### Viewing Items
All items can be viewed by calling `getItems()`.

#### Redeeming Items
Users can redeem items using their tokens by calling `redeem(uint itemId)`.

Please note, before interacting with these functions, you need to deploy the contract on the Ethereum network. If you are using Truffle, you can do this using the `truffle migrate` command.

## License
This project is licensed under the terms of the MIT license.

