// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract MyContract {
    address public owner;

    // Constructor sets the contract deployer as the owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier that restricts access to the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _; // This is where the function's code will be inserted
    }

    // A function that can only be called by the owner
    function changeOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }
}
