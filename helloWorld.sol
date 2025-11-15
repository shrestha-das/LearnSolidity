// SPDX-License-Identifier: MIT

// SPDX means "Software Package Data Exchange", this line above is written to specify that 
// this code is open-source or something else
// As I mentioned 'MIT' so we can say it's kinda open-source 

// "pragma solidity ..." is used to specify the compiler version that can be able to compile this code
pragma solidity ^0.8.30;        

// this is how we write/start the smart contract -
contract helloWorld {

    string public welcome = "Hello World"; 
    // It's a string(variable) called welcome, it is assigned the value called Hello World
    // also the string is Public that means people can see this string variable
    // and get to know what string key = value is written 
}