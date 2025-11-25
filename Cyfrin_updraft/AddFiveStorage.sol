// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {SimpleStorage} from "./SimpleStorage.sol";

// is -used for inheritance
contract AddFiveContract is SimpleStorage {
    // override cuz over-writting the real store function from SimpleStorage
    // we had to write virtual on the real store function in SimpleStorage
    function store(uint256 _actualFavNo) public override{   
        favoriteNumber = _actualFavNo + 5;
    }
}