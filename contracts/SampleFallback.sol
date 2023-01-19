// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract SampleFallback {
    uint public lastValueSent;
    string public lastFunctionCalled;
    uint public myUint;

    function updateNewUint(uint newUint) public {
        myUint = newUint;
    }

    receive() external payable {
        lastValueSent = msg.value;
        lastFunctionCalled = "receive";
    }

    fallback() external payable {
        // 0xc0aacb9f000000000000000000000000000000000000000000000000000000000000000a
        lastValueSent = msg.value;
        lastFunctionCalled = "fallback";
    }
}
