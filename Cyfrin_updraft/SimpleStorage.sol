// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    
    // variable 
    uint256 favoriteNumber;
    

    // function to store the fav no.
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }
 
    // function to get the fav no.
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
}