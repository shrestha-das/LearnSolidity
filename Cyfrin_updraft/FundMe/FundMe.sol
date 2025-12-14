// SPDX-License-Identifier: MIT

pragma solidity ^0.8.31;

import {PriceConverter} from "./PriceConverter.sol";
 
error NotOwner();

contract FundMe {
    using PriceConverter for uint256; 

    uint256 public constant MINIMUM_USD = 5e18;  // 5 ETH ( = 5e18 wei)
    address[] public funders;  // array of the funders' addresses
    mapping(address=>uint256) public addressToAmountfunded;  // mapping to know which funder funded how much?
    address public immutable i_owner;

    constructor() {
        i_owner = msg.sender;
    }

    function fund() public payable {
        // allows Users to send $ (minimum 5$)
        
        require(msg.value.getConversionRate() >= MINIMUM_USD, "minimum 5 ETH is required!");
        funders.push(msg.sender);
        addressToAmountfunded[msg.sender] += msg.value; 
    }


    // A function to Withdraw the funds  
    function withdraw() public onlyOwner{

        for( uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++) {
            address funder = funders[funderIndex];
            addressToAmountfunded[funder] = 0;
            
        }

        funders = new address[](0);
        
        // payable(msg.sender).transfer(address(this).balance);
        // bool sendSuccess = payable(msg.sender).send(address(this).balance);
        // require(sendSuccess, "send failed");
        (bool callSuccess, ) = payable(msg.sender).call{value:address(this).balance}("");
        require(callSuccess,"Call Failed!");
    }

    modifier onlyOwner() {     
        // require(msg.sender == i_owner, "Sender must be the Owner!");
        if(msg.sender != i_owner) revert NotOwner();
        _;
    }

    // What happens if someone sends this contract ETH without calling the fund function
    receive() external payable {
        fund();
    }

    fallback() external payable {
        fund();
    }
}