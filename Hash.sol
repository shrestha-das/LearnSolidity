// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract HashFunc {
    function createHash(string memory text, uint num, address addr) external pure returns (bytes32) {
        return keccak256(abi.encodePacked(text,num,addr));
        //return keccak256(abi.encode(text,num,addr));
    }
}

// encodePacked might cause collision of hash if the input has two correspoding dynamic data types(like string etc.)
// so you can use encode instead
// or you might keep another datatypes between those two dynamic datatypes