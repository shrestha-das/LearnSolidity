// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract Replace {

    uint[] public arr;

    function remove(uint _index) public {
        require( _index < arr.length, "index out of bound");

        arr[_index] = arr[arr.length-1];  // [1,2,3,4,5] -> [1,2,5,4,5]
        arr.pop(); // -> [1,2,5,4]
    }

    function test() external {
        arr = [1,2,3,4,5];
        remove(2); //[1,2,5,4]

        assert(arr[0] == 1);  
        assert(arr[1] == 2);
        assert(arr[2] == 5);
        assert(arr[3] == 4);

        assert(arr.length == 4);      
    }
}