// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract FunctionOutputs {

    // 1)multiple outputs
    function manyOutputs() public pure returns(uint, bool, string memory) {
        return (1, true, "Shrestha");
    }

    // 2) i. named outputs
    function namedOutputs() public pure returns(uint x, uint y) {
        return (1,2);
    }

    // 2) ii. assigned outputs (no return keyword)
    function assignedOutputs() public pure returns(uint x, uint y) {
        x = 1;
        y = 2;
    }

    // 3) Destructing Assignment
    function destructingAssignedOutputs() public pure returns(uint,bool,string memory,uint){
        (uint u, bool b, string memory s) = manyOutputs();
        (,uint _y) = namedOutputs();

        return (u, b, s, _y);
    }
}