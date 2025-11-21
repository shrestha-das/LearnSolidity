// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract SimpleStorage2 {
    
    // string name;
    // uint256 myfavouriteNumber;
    
    // uint256[] listOfFavNumbers;
    
    struct Person {
        string name;
        uint256 favouriteNumber;
    }
    
    // We can now use Person as variable-type(just like uint256,bool...)
    Person public Person01 = Person("Shrestha", 18);
    
    // Array of struct
    Person[] public people;

    mapping(string=>uint256) NameToFavNumber;
    
    // Add the person's name and his/her fav no.
    function addPerson(string memory _name, uint256 _favNumber) public {
        people.push(Person(_name, _favNumber));
        NameToFavNumber[_name] = _favNumber;
    }
    
    // Enter the person's name and in return get the fav no. of that person
    function getPerson(string memory _name) public view returns(uint256) {
        return NameToFavNumber[_name];
    }
}