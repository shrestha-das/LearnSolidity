// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

// mapping is a key-value data structure of solidity 
// it allows you to make a relation between key and value
// think of it like id and name, with the key:id we get the value(the name whose id it is)
// id -> name

contract map {
    // Syntax of mapping
    mapping (uint256 => string) public userIdToName;
    
    // to create the userId and name
    function addUSer(uint256 _userId, string memory _name) public {
        userIdToName[_userId] = _name;
    }

    // enter the id, get the user name
    function getUSer(uint256 _userId) public view returns (string memory){
        return userIdToName[_userId];
    }
}