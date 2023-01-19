// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleUint {
    uint public myUint;
    uint8 public myUint8 = 250;

    int public myInt = -10;

    function setMyUint(uint newUint) public {
        myUint = newUint;
    }

    function incrementUint8() public {
        myUint8++;
    }

    function decrementUint() public {
        myUint--;
    }

    function incrementInt() public {
        myInt++;
    }

}