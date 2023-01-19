// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleMapping {
    mapping(uint => bool) public myMapping;
    mapping(address => bool) public myAddressMapping;
    mapping(address => mapping(uint => bool)) private nestedAddressMapping;

    function setValue(uint index) public {
        myMapping[index] = true;
    }

    function unsetValue(uint index) public {
        myMapping[index] = false;
    }

    function updateAddress(address key, bool value) public {
        myAddressMapping[key] = value;
    }

    function updateNestedMapping(address key1, uint key2, bool value) public {
        nestedAddressMapping[key1][key2] = value;
    }

    function getNestedMappingValue(address key1, uint key2) public view returns(bool) {
        return nestedAddressMapping[key1][key2];        
    }
}