# Lock Smart Contract

This Solidity smart contract implements a lock mechanism that allows an amount of Ether to be locked until a specified unlock time. After the unlock time has passed, the contract owner can withdraw the locked Ether. The contract also includes an event to log withdrawal actions.

## Getting Started

### Prerequisites

- [Solidity Compiler](https://soliditylang.org/docs/getting-started.html)
- [Hardhat](https://hardhat.org/getting-started/)

### Installation

1. Clone this repository.
   ```sh
   git clone https://github.com/your-username/lock-smart-contract.git
   cd lock-smart-contract
   ```

2. Install dependencies.
   ```sh
   npm install
   ```

### Usage

1. Modify the `constructor` parameters in the `Lock.sol` file to set the desired unlock time when deploying the contract.

2. Deploy the contract using Hardhat.
   ```sh
   npx hardhat run scripts/deploy.js --network <network-name>
   ```

3. The contract owner can withdraw the locked Ether after the unlock time has passed.

## Features

- Locks Ether until a specified unlock time.
- Withdrawal of locked Ether by the contract owner.
- Event logging for withdrawal actions.

## Example

```solidity
// Deploy the contract with an unlock time 1 hour from now
Lock lock = new Lock(block.timestamp + 1 hours);

// Wait for the unlock time to pass
// Then, the owner can call the `withdraw` function to get the locked Ether
lock.withdraw();
```

## License

This project is licensed under the Unlicensed License. See the [LICENSE](LICENSE) file for details.

---
Shubham kumar
