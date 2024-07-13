# StorageVictim Contract

This project implements a simple storage contract in Solidity that allows users to store and retrieve data associated with their address. It includes both a flawed version (security_old) and a fixed version (security_new) of the contract, along with an audit report.

## Description

The StorageVictim contract is a basic implementation of a storage system on the Ethereum blockchain. It allows users to store a uint value associated with their address and retrieve it later. The contract also keeps track of the owner's address.

## Features

- Store a uint value associated with the user's address
- Retrieve stored data for the calling user
- Immutable owner address set at contract deployment
- View function to get the owner's address

## Contract Versions

### security_old.sol

This is the original contract with compilation and security errors. It serves as an example of common mistakes in smart contract development.

### security_new.sol

This is the fixed version of the contract, addressing the issues present in security_old.sol. It maintains the same logic but implements it in a secure and error-free manner.

## Audit Report

The AUDIT_REPORT.md file in this repository contains a detailed analysis of the issues found in security_old.sol and the fixes implemented in security_new.sol. It serves as a guide to understanding the vulnerabilities in the original contract and how they were addressed.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file named `StorageVictim.sol`. Copy and paste the contract code from security_new.sol into this file.

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.26" (or a compatible version), and then click on the "Compile StorageVictim.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the StorageVictim contract from the dropdown menu, and then click on the "Deploy" button.

After deployment, you can interact with the contract using the provided functions.

## Contract

### StorageVictim

- Allows users to store and retrieve data
- Keeps track of the contract owner

#### Key Functions:

- `constructor()`: Sets the contract owner to the address that deploys the contract
- `store(uint amount)`: Allows users to store a uint value associated with their address
- `getStore()`: Retrieves the stored data (user address and amount) for the calling user
- `getOwner()`: Returns the address of the contract owner

## Usage

1. Deploy the StorageVictim contract
2. Users can store data by calling the `store(uint amount)` function
3. Users can retrieve their stored data by calling the `getStore()` function
4. Anyone can view the contract owner's address by calling the `getOwner()` function

## Security Considerations

Please refer to the AUDIT_REPORT.md file for a detailed analysis of the security issues in the original contract and how they were addressed in the fixed version. It's crucial to understand these vulnerabilities to write secure smart contracts.

## Authors

Aleonomoh Joseph

## License

This project is licensed under the MIT License.
