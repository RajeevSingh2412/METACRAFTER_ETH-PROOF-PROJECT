# VEDA's TOKEN CONTRACT

This Solidity program is a simple "TOKEN CONTRACT" program that represents the great Indian Scripture VEDA as a token abbreviated by VED, along with functionalities for managing its total supply through minting and burning functions.

## DESCRIPTION

This program is a basic smart contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract represents a token named "VEDA" with the symbol "VED" and includes functionalities to mint (create) and burn (destroy) tokens, which affects the total supply.
Additionally, it uses a mapping of addresses to balances, which enables the contract to keep track of the balance of VED tokens held by each address.

## Getting Started

### Executing Program

To run this program, you can use Remix, an online Solidity IDE. Follow the steps below to get started:

    1. Go to the Remix website at Remix Ethereum IDE.
    2. Create a new file by clicking on the "+" icon in the left-hand sidebar.
    3. Save the file with a .sol extension (e.g., VedaToken.sol).
    4. Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract VedaToken {

    // public variables here
    string public token_name="VEDA";
    string public token_abbr="VED";
    uint public total_supply=0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint(address _address,uint _value) public{
        total_supply+=_value;
        balances[_address]=balances[_address]+_value;
    }

    // burn function
    function burn(address _address,uint _value) public{
        if(balances[_address]>=_value){
            total_supply-=_value;
            balances[_address]-=_value;
        }
    }

}

```

### Compiling the Code
    1. Click on the "Solidity Compiler" tab in the left-hand sidebar.
    2. Ensure the "Compiler" option is set to "0.8.25" (or another compatible version).
    3. Click on the "Compile VedaToken.sol" button.
    4. Deploying the Contract
        a. Go to the "Deploy & Run Transactions" tab in the left-hand sidebar.
        b. Select the "VedaToken" contract from the dropdown menu.
        c. Click on the "Deploy" button.
    5. Interacting with the Contract
       Once the contract is deployed, you can interact with it by calling the mint and burn functions. You can also retrieve the values of the public variables 
       token_name, token_abbr, and total_supply.

#### Mint Tokens:

    1. Select the mint function.
    2. Enter the address and the number of tokens to mint.
    3. Click on the "transact" button.
    
#### Burn Tokens:

    1. Select the burn function.
    2. Enter the address and the number of tokens to burn.
    3. Click on the "transact" button.

#### Check Balances:

    1. Select the Balances Mapping.
    2. Enter the address and click on "call"button.
    3. Balance of entered address will be visible.

#### View Token Details

    Retrieve the values of token_name, token_abbr, and total_supply from the deployed contract.


## Authors

Rajeev Singh
[[@rajeevsingh]()](https://www.linkedin.com/in/rajeevsingh2412/)
