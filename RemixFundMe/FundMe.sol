// Get funds from users and withdraw fund for owner
// Set minimum funding value in USD

//Chain link are only watching on Goerli testnet and real networks, there's no chainlink in JS EVM

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
import "./PriceConverterLib.sol";

//@smartcontractkit is npm package for chainlink

contract FundMe{
    using PriceConverterLib for uint256;
    // libraries are similar to contracts except for holding funds or state variables
    uint256 public minUSD = 50 * 1e18; //18 decimals

    address[] public funders;
    mapping (address =>uint256) public addressToAmount;

    function fund() public payable{
        //Tx fields: Nonce ; Gas price ; Gas limit ; To ; Value ; Data ; signature's v r s
        //public allows anyone to call the functiona and payable makes the contract be able to hold funds
        //Contract funds are seperated from wallets
        msg.value;
        require (msg.value.getConversionPrice()>minUSD,"Didnt send enough");
        //msg.value is taken as the first variable for any of the functions in PriceConverterLib
        //If there's a 2nd or 3rd parameter, pass them accordingly into the function call
        //eg: msg.value.getConversionPrice(param2,param3);
        //1e18 is 1*10^18, the base unit is wei
        funders.push(msg.sender);
        //msg.sender is the address of the function caller
        addressToAmount[msg.sender] = msg.value;
    }


}