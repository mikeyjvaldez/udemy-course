// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleContract {
    string public message = "Hello world";

    function updateMessage(string memory updatedMessage) public payable {
        if (msg.value == 1 ether) {
            message = updatedMessage;
        } else {
            payable(msg.sender).transfer(msg.value);
        }
    }
}
