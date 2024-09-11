// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.26;

contract SimpleStorage {
    // Create a variable to hold favorite number
    uint256 myNum ;
    // Create a struct to hold favorite number and username 
    struct User {
        uint256 myNum;
        string username;
    }
    // Create an array to hold multiple structs 
    User[] private userArray;
    // Create a mapping to get number by username
    mapping (string => uint256) public usernameToMyNum;
    // Create a function to receive a number and store it in 'myNum'
    function addNumber(uint256 _myNum, string memory _username) public {
        userArray.push(User({myNum: _myNum, username: _username}));
        usernameToMyNum[_username] = _myNum;
    }
    // Create a function to modify the value of myNum. Note that this piece of code is to facilitate code structure in StorageFactory 
    function store(uint256 numToStore) public virtual {
        myNum = numToStore;
    }
    // Create a function to retrieve the value of myNum 
    function get() public view returns (uint256){
        return myNum;
    }
}