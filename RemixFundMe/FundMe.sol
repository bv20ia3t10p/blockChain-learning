// Get funds from users and withdraw fund for owner
// Set minimum funding value in USD

//Chain link are only watching on Goerli testnet and real networks, there's no chainlink in JS EVM

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract FundMe{

    function fund() public payable{
        //Tx fields: Nonce ; Gas price ; Gas limit ; To ; Value ; Data ; signature's v r s
        //public allows anyone to call the functiona and payable makes the contract be able to hold funds
        //Contract funds are seperated from wallets
        msg.value;
        require (msg.value > 1e18 , "Not enough fund");
        //1e18 is 1*10^18, the base unit is wei

    }

}