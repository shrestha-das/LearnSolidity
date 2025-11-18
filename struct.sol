// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract myPorscheDetails {
    
    // forming the struct
    struct porsche {
        string color;
        string model;
        uint256 year;
        uint256 mileage;
    }
     
    // array of struct
    porsche[] public porsches;

    // add the struct-details
    function addPorsche(string memory color,
        string memory model,
        uint256 year,
        uint256 mileage) public {
            porsche memory newPorsche = porsche({
                color : color,
                model : model,
                year : year,
                mileage : mileage
            });
            
            // push the struct-details into the array
            porsches.push(newPorsche);
        }
}