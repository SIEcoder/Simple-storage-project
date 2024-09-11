// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.26;

import "./SimpleStorage.sol";

// Create contract that redefines the original store contract by storing a number 5 bigger than input recieved 
contract ExtraStorage is SimpleStorage {
    function store(uint256 choiceNum) public override {
        myNum = choiceNum;
    }
}