// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract array{

    uint[] public dynamicArray;

    uint[] public nums = [11,22,33,44,55];

    uint[10] public fixedSizedArray;

    string[5] public names;

    function addToNum(uint newNum) public{
        nums.push(newNum);
    }

    function removeFromNum() public{
        nums.pop();
    }

    function getNums() public view returns(uint[] memory){
        return nums;
    }
}