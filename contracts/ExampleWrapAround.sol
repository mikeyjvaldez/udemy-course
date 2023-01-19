// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleUint {
    uint8 public myUint = 2**4;
    function decrementUint() public {
        unchecked {
            myUint--;
        }
    }

    function incrementUint() public {
        myUint++;
    }

}