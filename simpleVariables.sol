// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract simpleVariables {

    // 1-> Address represents Ethereum Wallet Address
    // address userAddress = 0x6d189a0cc4558b645a533b5bbe9aa47e3af18dgf; (having some issues so commentend out this line)

    // 2-> String is some text
    string name = "Shrestha";

    // 3-> Booleans are basically true or false
    bool canVote = true;

    // 4-> Numbers as uint
    uint8 age = 1; // uint8 means unsigned integer of 8 bits (0 to 255)

    // btw these variables are not public so usually other people can't see them!
    // ALSO in solidity there are more types of variables ...so don't think it's the end with only these 4 types
}