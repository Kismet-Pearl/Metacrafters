# MyToken ERC20 Contract

## Overview

This project demonstrates the creation and deployment of an ERC20 token using Solidity and OpenZeppelin libraries. The token contract allows the owner to mint new tokens and any holder to burn and transfer tokens.

## Smart Contract

The `MyToken` contract is an ERC20 token with additional functionality to mint and burn tokens. It inherits from OpenZeppelin's `ERC20` standard contract and `Ownable` contract.

### Functions

- **Constructor**: Initializes the token with name "MyToken" and symbol "MTK".
- **mint**: Allows the owner to create new tokens and assign them to a specified address.
- **burn**: Allows any token holder to destroy their tokens permanently.

## Setup

Follow these steps to deploy and interact with the `MyToken` ERC20 contract:

### Prerequisites

- Node.js and npm installed (https://nodejs.org/)
- HardHat (https://hardhat.org/) or Remix IDE (https://remix.ethereum.org/)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your_username/my-token.git
   cd my-token
   ```
2. Install dependencies:
   ```bash
    npm install
   ```

### Deployment

1. Compile the smart contract:

```bash
npx hardhat compile
```

2. Deploy the contract:

```bash
npx hardhat run scripts/deploy.js --network <network_name>
```

Replace <network_name> with your preferred Ethereum network (e.g., localhost for local blockchain).

3. Note the deployed contract address logged in the console.

### Interacting with the Contract
1. Update scripts/interact.js with the deployed contract address:

```bash
const myToken = await MyToken.attach('YOUR_DEPLOYED_CONTRACT_ADDRESS');
```

2. Run the interaction script:

```bash
npx hardhat run scripts/interact.js --network <network_name>
```
Ensure you have Ethereum accounts with funds available for transactions.
