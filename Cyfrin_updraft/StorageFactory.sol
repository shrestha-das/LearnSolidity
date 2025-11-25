// import other contracts
// use functions of other contracts 
// (Example here we used store, retrieve from SimpleStorage)

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public ArrayOfSimpleStorages;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        ArrayOfSimpleStorages.push(newSimpleStorage);
    }

    function sfStore (uint256 _simpleStorageIndex, uint256 _favNumber) public {
        SimpleStorage simpleStorage = ArrayOfSimpleStorages[_simpleStorageIndex];
        simpleStorage.store(_favNumber);
    }

    function sfRetrieve (uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage simpleStorage = ArrayOfSimpleStorages[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }

}