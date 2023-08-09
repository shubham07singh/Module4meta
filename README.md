# DegenToken Smart Contract

DegenToken is an ERC-20 compatible token smart contract implemented in Solidity. This contract provides basic token functionality as well as additional features for creating and redeeming items. Users can mint tokens, transfer them, and redeem items based on their token balance.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Deployment](#deployment)
- [Usage](#usage)
- [Token Operations](#token-operations)
- [Item Operations](#item-operations)
- [License](#license)

## Overview

DegenToken is an ERC-20 token named "Degen" with the symbol "DGN". It supports common ERC-20 functions like minting, transferring, and burning tokens. Additionally, the contract introduces a custom feature for managing items that users can redeem using their token balance.

## Features

1. ERC-20 Token:
   - Mint tokens by the contract owner.
   - Transfer tokens between addresses.
   - Burn tokens to reduce the total supply.

2. Item Management:
   - Add items with names, prices, and descriptions.
   - Redeem items by deducting the item price from the user's token balance.

## Getting Started

### Prerequisites

- An Ethereum development environment (e.g., Remix, Truffle, Hardhat).
- Basic knowledge of Solidity and Ethereum development.

### Deployment

1. Clone or download this repository.
2. Deploy the `DegenToken.sol` contract to your Ethereum development environment using your preferred tool.
3. Interact with the contract using the provided functions.

## Usage

To use the DegenToken smart contract, follow these steps:

1. Mint Tokens: As the contract owner, mint tokens to specific addresses.

2. Transfer Tokens: Users can transfer tokens to other addresses using the `transfer` function.

3. Add Items: The owner can add items by calling the `addItem` function with the item's name, price, and description.

4. Redeem Items: Users can redeem items by calling the `redeemItem` function and providing the item ID. The item's price will be deducted from their token balance.

## Token Operations

- `totalsupply()`: Get the total supply of Degen tokens.
- `balanceof(address account)`: Get the token balance of a specific account.
- `mint(address to, uint256 amount)`: Mint tokens and send them to the specified address (only callable by the owner).
- `burn(uint256 amount)`: Burn tokens from the sender's balance.
- `transfer(address recipient, uint256 amount)`: Transfer tokens from the sender's balance to the recipient's balance.

## Item Operations

- `addItem(string memory itemName, uint256 price, string memory desc)`: Add a new item with a name, price, and description.
- `redeemItem(uint256 Item)`: Redeem an item by providing the item ID and deducting its price from the user's token balance.
- `getItemDetails(uint256 item)`: Get details about a specific item, including its name and price.
- `getItems()`: Get an array of all added items.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---
Thank you 
Shubham kumar
