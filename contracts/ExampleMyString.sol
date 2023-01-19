// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleMyString {
    string public myString = "Hello World";
    bytes public myBytes = "Hello World";`1

    function setMyString(string memory updateString) public {
        myString = updateString;
    }

    function compareTwoStrings(string memory compareString) public view returns(bool) {
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(compareString));
    }
}