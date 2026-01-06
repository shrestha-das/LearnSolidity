// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

library Math {
    function max(uint x, uint y) internal pure returns (uint) {
        require(x != y, "x is equal to y");
        return x>y? x:y;
    }
}

contract Test {
    function testMax(uint x, uint y) external pure returns (uint) {
        return Math.max(x,y);
    }
}

library ArrayLib {
    function find(uint[] storage arr, uint x) internal view returns (uint) {
        for (uint i=0; i<arr.length; i++) {
            if (arr[i] == x){
                return i;
            }
        }
        revert("Not found!!");
    }
}

contract TestArray {
    using ArrayLib for uint[]; 
    uint[] arr = [3,2,1];

    function testFind() external view returns(uint i) {
        return ArrayLib.find(arr, 2);
    }
}