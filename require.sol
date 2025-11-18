// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Greet {
    string public greet = "hello";
    
    // // * BTW it's good practice to use constructor to initialize greet with "hello"
    // constructor() {
    //     greet = "hello";
    // }

    function greetMe(string memory _greet) public view returns (string memory) {
        // we need this keccak256 and abi.encodePacked to compare 2 strings :)
        require(keccak256(abi.encodePacked(greet)) == keccak256(abi.encodePacked(_greet)), "You must greet me hello");
        return "Welcome!";
    } 
}