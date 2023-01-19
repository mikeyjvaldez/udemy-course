// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleConstructor {
    address public myAddress;

    constructor(address _address) {
        myAddress = _address;
    }

}