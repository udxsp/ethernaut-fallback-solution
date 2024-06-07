# Ethernaut Level: Fallback - Solution

## Overview

This project demonstrates the solution for the "Fallback" level from [Ethernaut](https://ethernaut.openzeppelin.com/), a series of Web3/Solidity challenges developed by OpenZeppelin. Ethernaut is designed to teach the concepts of smart contract security by presenting various vulnerabilities in the form of levels to be solved.

## Level Description: Fallback

In the "Fallback" level, the goal is to gain ownership of a contract and drain its funds by exploiting a series of vulnerabilities. The level introduces concepts such as fallback functions and improper handling of ownership in smart contracts.

## Solution

This repository contains the solution for the "Fallback" level, implemented using Foundry, a blazing fast, portable, and modular toolkit for Ethereum application development.

### Steps to Solve

1. **Understanding the Vulnerability:**

   - The contract has a fallback function that allows sending Ether and can potentially change the ownership.
   - By contributing a small amount, you become eligible for triggering the fallback function.
   - By sending Ether directly to the contract, you can exploit the fallback function to gain ownership.
   - Once the ownership is acquired, you can drain the funds.

2. **Implementation:**
   - A Foundry test script is used to automate the process of exploiting the vulnerabilities.

### Prerequisites

- [Foundry](https://github.com/foundry-rs/foundry) installed on your local machine.

### Setup

1. Clone the repository:

```sh
git clone https://github.com/udxsp/ethernaut-fallback-solution.git

```

2. Install dependencies:

```sh
forge install
```
2. Compile the contracts:

```sh
forge build
```

### Running the solution
Execute the test to solve the level:
```sh
forge test
```
The test script will:

1. Deploy the "Fallback" contract.
2. Interact with the contract to exploit the vulnerabilities and gain ownership.
3. Verify the ownership change and drain the contract's funds.