// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
//Before version 8, uint and int are "unchecked", if a number goes beyond its limit, itll return to lowest value
// a way to replicate this is 
//unchecked {bigNumber = bigNumber + 1;}
//unchecked is more gas efficient

contract SafeMathTester{
    uint8 public bigNumber=255;
    function add() public {
        bigNumber = bigNumber + 1;
    }
}