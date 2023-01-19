// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleAddress {
    address public someAddress;
    function updateAddress(address newAddress) public {
        someAddress = newAddress;
    }

    function getBalance() public view returns(uint) {
        return someAddress.balance;
    }
}