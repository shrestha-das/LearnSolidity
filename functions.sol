// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract calculator {

    // The main num var 
    uint256 num;

    // The input (_num)
     function Number (uint256 _num) public {
        num = _num;
     }


    // How much wanna add or substract or multiply or divide :- 

     function add (uint256 _add) public view returns(uint256){
        return num+_add;
     }

     function subtract  (uint256 _sub) public view returns(uint256){
        return num-_sub;
     }

     function multiply (uint256 _mul) public view returns(uint256){
        return num*_mul;
     }

     function divide (uint256 _div) public view returns(uint256){
        return num/_div;
     }

     // After deploying,I've noticed that - in which order I have written the function  
     // the remix ide doesn't follow that order, it keeps the Number func at top and others are arranged alphabetically
}