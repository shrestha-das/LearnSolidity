// import other contracts
// use functions of other contracts 
// (Example here we used store, retrieve from SimpleStorage)

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public ArrayOfSimpleStorages;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();  //creating a copy of SimpleStorage Contract
        ArrayOfSimpleStorages.push(newSimpleStorage);
    }

    function sfStore (uint256 _simpleStorageIndex, uint256 _favNumber) public {
        SimpleStorage simpleStorage = ArrayOfSimpleStorages[_simpleStorageIndex];  // get the index
        simpleStorage.store(_favNumber);  // store the favNo in that indexed Contract
    }

    function sfRetrieve (uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage simpleStorage = ArrayOfSimpleStorages[_simpleStorageIndex]; 
        return simpleStorage.retrieve();  // retrieve the favNo
    }

}