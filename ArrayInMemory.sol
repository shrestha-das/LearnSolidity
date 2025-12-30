// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract ArrayInMemory {

    function arrayInMemory() external pure returns(uint[] memory) {
        uint[] memory a = new uint[](3);
        return a;
    }
}