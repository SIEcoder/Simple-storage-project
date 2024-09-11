// SPDX-License-Identifier: MIT 

 pragma solidity ^0.8.26;

import "./SimpleStorage.sol";

 contract StorageFactory {
    // Create an array that stores the SimpleStorage contracts we'd be creating
    SimpleStorage[] public contractArray;
    // Create a function that creates SimpleStorage contracts 
    function CreateContract() public {
        SimpleStorage newContract = new SimpleStorage();
        contractArray.push(newContract);
    }
    // Create a function to store a number at a simple storage contract of user's choosing through supplied index
    function sfStore(uint256 numToStore, uint256 contractIndex) public {
        return contractArray[contractIndex].store(numToStore);
    }
    // Create a function to fetch number when passed the index of the contract where it is stored 
    function sfGet(uint256 contractIndex) public view returns (uint256) {
        return contractArray[contractIndex].get();
    }
 }